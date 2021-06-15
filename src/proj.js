const express = require('express');
const url = require('url');
const bodyParser = require('body-parser');
const multer = require('multer');
const upload = multer({dest: 'tmp_uploads/'});
const fs = require('fs');
const session = require('express-session');
const moment = require('moment-timezone');
const db = require(__dirname + '/db-connect');

const app = express();

app.set('view engine', 'ejs');
app.use(express.static('public'));
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

app.use(session({
    saveUninitialized: false,
    resave: false,
    secret: 'ksdhkasjhfjs',
    cookie: {
        maxAge: 1200000
    }
}));

app.get('/', (req, res) => {
    res.render('proj/index');
});

app.get('/data-list/:page?', (req, res) => {
    const perPage = 10;
    const output = {
        perPage: perPage,
        pageName : "data-list",
    };
    let page = parseInt(req.params.page) || 1;
    output.page = page;
    const birthFm = 'YYYY-MM-DD';
    let sql1 = "SELECT COUNT(1) num FROM address_book";
    let sql2 = `SELECT * FROM address_book LIMIT ${(page - 1) * perPage}, ${perPage}`;

    db.queryAsync(sql1)
        .then(results => {
            output.total = results[0].num;
            output.totalPages = Math.ceil(output.total / perPage);

            if (page < 1 || page > output.totalPages) {
                return res.redirect('/data-list');
            }
            return db.queryAsync(sql2);
        })
        .then(results => {
            for(let i of results){
                i.birthday = moment(i.birthday).format(birthFm);
            }
            output.rows = results;
            //res.json(output);
            res.render('proj/data-list', output);
        })
        .catch(error => {
            console.log(error);
        });
});

app.get('/data-insert', (req, res) => {
    res.render('proj/data-insert',{
        pageName: 'data-insert'
    });
});

app.post('/data-insert', (req, res) => {
    // TODO: 資料檢查
    const output = {
        success: false,
        code: 400,
        results : {},
        errorMsg: '',
        body: req.body
    };

    if(!req.body.name || req.body.name.length<2){
        output.code = 410;
        output.errorMsg = '姓名請填兩個字以上';
        return res.json(output);
    }

    const sql = "INSERT INTO `address_book`(`name`, `mobile`, `email`, `birthday`, `address`, `created_at`) VALUES (?,?,?,?,?, NOW())";
    db.queryAsync(sql, [
        req.body.name,
        req.body.mobile,
        req.body.email,
        req.body.birthday,
        req.body.address,
    ])
        .then(results=>{
            output.results = results;
            if(results.affectedRows===1){
                output.success = true;
                output.code = 200;
            } else {
                output.code = 420;
                output.errorMsg = '資料新增失敗';
            }
            res.json(output);
        })
        .catch(error=>{
            //output
        });

});
app.get("/data-remove/:sid", (req, res)=>{
    const sql = "delete from address_book where sid=?";
    db.queryAsync(sql, [req.params.sid])
        .then(results=>{
            console.log(results);
            let backTo =req.headers.referer || "/data-list";
            res.redirect(backTo);
        });
});
app.get('/data-edit/:sid', (req, res) => {
    const sql = "SELECT * FROM address_book WHERE sid=?";
    db.queryAsync(sql, [req.params.sid])
        .then(results=>{
            if(! results.length){
                return res.redirect('/data-list');
            } else {
                results[0].birthday = moment(results[0].birthday).format('YYYY-MM-DD');
                res.render('proj/data-edit', {
                    data: results[0]
                })
                // res.render('proj/data-edit', {
                //     data: results[0]
                // })
            }
        });
    //res.json(req.headers); // referer
});

app.post('/data-edit/:sid', (req, res) => {
    // TODO: 資料檢查
    const output = {
        success: false,
        code: 400,
        results : {},
        errorMsg: '',
        body: req.body
    };

    if(!req.body.name || req.body.name.length<2){
        output.code = 410;
        output.errorMsg = '姓名請填兩個字以上';
        return res.json(output);
    }

    const sql = `UPDATE \`address_book\` SET 
    \`name\`=?,
    \`mobile\`=?,
    \`email\`=?,
    \`birthday\`=?,
    \`address\`=? 
    WHERE sid=?`;
    db.queryAsync(sql, [
        req.body.name,
        req.body.mobile,
        req.body.email,
        req.body.birthday,
        req.body.address,
        req.params.sid
    ])
        .then(results=>{
            output.results = results;
            if(results.affectedRows===1){
                output.success = true;
                output.code = 200;
            } else {
                output.code = 420;
                output.errorMsg = '資料沒有修改';
            }
            res.json(output);
        })
        .catch(error=>{
            //output
        });

});

// 404 要在 routes 的最後面
app.use((req, res) => {
    res.type('text/plain');
    res.status(404);
    res.send('404 !!!!!!!!!!');
});

app.listen(3000, () => {
    console.log('proj server start');
});
