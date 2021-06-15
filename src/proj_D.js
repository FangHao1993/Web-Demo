const express = require('express');
const url = require('url');
const bodyParser = require('body-parser');
const multer = require('multer');
const upload = multer({ dest: 'tmp_uploads/' });
const fs = require('fs');
const session = require('express-session');
const moment = require('moment-timezone');
const db = require(__dirname + '/db-connect-test');
const app = express();

app.set('view engine', 'ejs');
app.use(express.static('public'));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use(session({
    saveUninitialized: false,
    resave: false,
    secret: 'ksdhkasjhfjs',
    cookie: {
        maxAge: 12000000
    }
}));

app.get("/", (req, res) => {
    delete req.session.loginUser;
    let data = {
        loginUser: req.session.loginUser,
        flashMsg: req.session.flashMsg || "",
    };
    delete req.session.flashMsg;
    res.render("proj_d/login", data);
});

app.post("/", (req, res) => {

    res.redirect("/login");
})

app.post("/login-check", (req, res) => {
    
    let sql1 = "SELECT account,password FROM member_data_list where account = ? and password = ?";
    db.queryAsync(sql1, [account = req.body.account, password = req.body.password])
        .then(results => {
            if (results.length === 0) {
                req.session.flashMsg = "帳號密碼輸入錯誤";
                return res.redirect("/");
            } else {
                req.session.loginUser = req.body.account.toUpperCase();
                return res.redirect("/point-table");
            }
        })


})

app.get("/logout", (req, res) => {
    delete req.session.loginUser;
    res.redirect("/");
})

app.get("/dong-form", (req, res) => {
    let data = {
        flashMsg: req.session.flashMsg || "",
    };
    delete req.session.flashMsg;
    res.render("proj_d/dong-form", data)
});

app.get("/game", (req, res) => {

    if(! req.session.loginUser){
        res.redirect("/");
    }

    const output = {
        loginUser: req.session.loginUser,
    };
    let sql1 = "SELECT english FROM abc";
    let sql2 = "SELECT chinese FROM abc";

    db.queryAsync(sql1)
        .then(results => {
            output.english = results;
            return db.queryAsync(sql2);
        })
        .then(results => {
            output.chinese = results;
            res.render('proj_d/game', output);
        })
});
app.post("/game", (req, res) => {

    name = req.body.membername
    gender = req.body.gender
    birthday = `${req.body.year}-${req.body.month}-${req.body.date}`
    idcode = req.body.idcode
    mobile = req.body.mobile
    address = req.body.districtcode + req.body.city + req.body.district + req.body.address
    email = req.body.mail1
    account = req.body.account
    password = req.body.pwd1

    res.redirect("/game");
});

app.get('/login-table/:page?', (req, res) => {
    if((! req.session.loginUser) || (req.session.loginUser.toUpperCase() != "GM")){
        res.redirect("/");
    }
    const perPage = 10;
    const output = {
        loginUser: req.session.loginUser,
        perPage: perPage,
        pageName: "login-table",
    };
    let page = parseInt(req.params.page) || 1;
    output.page = page;
    const birthFm = 'YYYY-MM-DD';
    const createFm = 'YYYY-MM-DD HH:mm:ss'
    let sql1 = "SELECT COUNT(1) num FROM member_data_list";
    let sql2 = `SELECT * FROM member_data_list LIMIT ${(page - 1) * perPage}, ${perPage}`;

    db.queryAsync(sql1)
        .then(results => {
            output.total = results[0].num;
            output.totalPages = Math.ceil(output.total / perPage);

            if (page < 1 || page > output.totalPages) {
                return res.redirect('/login-table');
            }
            return db.queryAsync(sql2);
        })
        .then(results => {
            for (let i of results) {
                i.birthday = moment(i.birthday).format(birthFm);
                i.create_at = moment(i.create_at).format(createFm);
            }
            output.rows = results;
            //res.json(output);
            res.render('proj_d/login-table', output);
        })
        .catch(error => {
            console.log(error);
        });
});

app.post("/login-table", (req, res) => {
    const sql = "INSERT INTO `member_data_list`(`name`, `gender`, `birthday`, `idcode`, `mobile`, `address`, `email`,`account`,`password`,`point`,`create_at`) VALUES (?,?,?,?,?,?,?,?,?,?,now())";
    db.queryAsync(sql, [
        name = req.body.name,
        gender = req.body.gender,
        birthday = req.body.birthday,
        idcode = req.body.idcode,
        mobile = req.body.mobile,
        address = req.body.address,
        email = req.body.email,
        account = req.body.account,
        password = req.body.password,
        point = req.body.pointv,
    ])
    res.redirect("/login-table");
})

app.get('/info', (req, res) => {
    if(! req.session.loginUser){
        res.redirect("/");
    }
    const output = {
        loginUser: req.session.loginUser,
    };
    const birthFm = 'YYYY-MM-DD';
    const createFm = 'YYYY-MM-DD HH:mm:ss'
    let sql1 = "SELECT * FROM member_data_list where account =?";

    db.queryAsync(sql1,[req.session.loginUser])
        
        .then(results => {
            for (let i of results) {
                i.birthday = moment(i.birthday).format(birthFm);
                i.create_at = moment(i.create_at).format(createFm);
            }
            output.rows = results;
            //res.json(output);
            res.render('proj_d/info', output);
        })
        .catch(error => {
            console.log(error);
        });
});

app.get('/rank/:page?', (req, res) => {
    if(! req.session.loginUser){
        res.redirect("/");
    }
    const perPage = 10;
    const output = {
        loginUser: req.session.loginUser,
        perPage: perPage,
        pageName: "rank",
    };
    let page = parseInt(req.params.page) || 1;
    output.page = page;
    const createFm = 'YYYY-MM-DD HH:mm:ss'

    let sql1 = "SELECT COUNT(1) num FROM point_table GROUP BY account";
    
    // let sql2 = `select * from point_table t where t.point = (select max(point),ROW_NUMBER() over(order by max(point) DESC) as c from point_table where t.account = account ) DESC LIMIT ${(page - 1) * perPage}, ${perPage}`;
    // let sql2 = `select * from point_table t where t.point = (select max(point) from point_table where t.account = account ) order by point DESC LIMIT ${(page - 1) * perPage}, ${perPage}`;
    let sql2 = `SELECT  c.account, c.point, c.create_at, c.sid FROM (SELECT  b.account, b.point, min(b.create_at) as time FROM (select account, max(point) score from point_table group by account) a join point_table b on a.account = b.account and a.score = b.point GROUP BY b.account) b JOIN point_table c ON b.account = c.account and b.point = c.point AND b.time = c.create_at order by point DESC LIMIT ${(page - 1) * perPage}, ${perPage}`;

    db.queryAsync(sql1)
        .then(results => {
            output.total = results[0].num;
            output.totalPages = Math.ceil(output.total / perPage);
            if(output.total === 0){
                return res.render('proj_d/rank', output);
            }else{

            if (page < 1 || page > output.totalPages) {
                return res.redirect('/rank');
            }
            return db.queryAsync(sql2);
        }})
        
        .then(results => {
            for (let i of results) {
                i.create_at = moment(i.create_at).format(createFm);
            }
            output.rows = results;
            // return db.queryAsync(sql3);
            //res.json(output);
            res.render('proj_d/rank', output);
            
        })
        .catch(error => {
            console.log(error);
        });
});

app.get('/point-table/:page?', (req, res) => {
    if(! req.session.loginUser){
        res.redirect("/");
    }
    const perPage = 10;
    const output = {
        loginUser: req.session.loginUser,
        perPage: perPage,
        pageName: "point-table",
    };
    let page = parseInt(req.params.page) || 1;
    output.page = page;
    const createFm = 'YYYY-MM-DD HH:mm:ss'
    let sql1 = "SELECT COUNT(1) num FROM point_table";
    let sql2 = `SELECT * FROM point_table order by point DESC LIMIT ${(page - 1) * perPage}, ${perPage}`;

    db.queryAsync(sql1)
        .then(results => {
            output.total = results[0].num;
            output.totalPages = Math.ceil(output.total / perPage);
            if(output.total === 0){
                return res.render('proj_d/point-table', output);
            }else{

            if (page < 1 || page > output.totalPages) {
                return res.redirect('/point-table');
            }
            return db.queryAsync(sql2);
        }})
        
        .then(results => {
            for (let i of results) {
                i.create_at = moment(i.create_at).format(createFm);
            }
            output.rows = results;
            //res.json(output);
            res.render('proj_d/point-table', output);
            
        })
        .catch(error => {
            console.log(error);
        });
});

app.post("/point-table", (req, res) => {

    const sql = "INSERT INTO `point_table`(`account`,`point`,`create_at`) VALUES (?,?,now())";
    db.queryAsync(sql, [
        account = req.body.account,
        point = req.body.pointv,
    ])
    res.redirect("/point-table");
})

app.post("/register-table", (req, res) => {

    let sql1 = "SELECT account FROM member_data_list where account = ?";
    db.queryAsync(sql1, [account = req.body.account])
        .then(results => {
            if (results.length === 0) {
                // req.session.loginUser = req.body.account;
                const sql = "INSERT INTO `member_data_list`(`name`, `gender`, `birthday`, `idcode`, `mobile`, `address`, `email`,`account`,`password`,`create_at`) VALUES (?,?,?,?,?,?,?,?,?,now())";
                db.queryAsync(sql, [
                    name = req.body.membername,
                    gender = req.body.gender,
                    birthday = `${req.body.year}-${req.body.month}-${req.body.date}`,
                    idcode = req.body.idcode,
                    mobile = req.body.mobile,
                    address = req.body.districtcode + req.body.city + req.body.district + req.body.address,
                    email = req.body.mail1,
                    account = req.body.account.toUpperCase(),
                    password = req.body.pwd1,
                ])
                return res.redirect("/");

            } else {
                req.session.flashMsg = "帳號重複";
                return res.redirect("/dong-form");
            }
        })
})

app.get('/data-edit', (req, res) => {
    output={

    }
    const birthFm = 'YYYY-MM-DD';
    let sql1 = `SELECT * FROM member_data_list where account = ? `;
    db.queryAsync(sql1, [account = req.session.loginUser])

        .then(results => {
            for (let i of results) {
                i.birthday = moment(i.birthday).format(birthFm);
            }
            output.rows = results;
            //res.json(output);
            res.render('proj_d/data-edit', output);
        })
        .catch(error => {
            console.log(error);
        });
});

app.post("/data-edit",(req, res) => {
     // TODO: 資料檢查
    const output = {
        success: false,
        code: 400,
        results : {},
        errorMsg: '',
        body: req.body
    };

    const sql = "UPDATE \`member_data_list\` SET \`name\`=?,\`gender\`=?,\`birthday\`=?,\`mobile\`=?,\`address\`=?,\`email\`=?,\`password\`=? WHERE \`account\`=?";

    db.queryAsync(sql, [
        name = req.body.membername,
        gender = req.body.gender,
        birthday = `${req.body.year}-${req.body.month}-${req.body.date}`,
        mobile = req.body.mobile,
        address = req.body.districtcode + req.body.city + req.body.district + req.body.address,
        email = req.body.mail1,
        password = req.body.pwd1,
        req.body.account,
    ])
    return res.redirect("/");

})

app.get("/data-remove/:sid", (req, res) => {
    const sql = "delete from member_data_list where sid=?";
    db.queryAsync(sql, [req.params.sid])
        .then(results => {
            console.log(results);
            let backTo = req.headers.referer || "/login-table";
            res.redirect(backTo);
        });
});

app.get("/point-remove/:sid", (req, res) => {
    const sql = "delete from point_table where sid=?";
    db.queryAsync(sql, [req.params.sid])
        .then(results => {
            console.log(results);
            let backTo = req.headers.referer || "/point-table";
            res.redirect(backTo);
        });
});


app.get("/rank-remove/:sid", (req, res) => {
    const sql = "delete from point_table where sid=?";
    db.queryAsync(sql, [req.params.sid])
        .then(results => {
            console.log(results);
            let backTo = req.headers.referer || "/rank";
            res.redirect(backTo);
        });
});


//-------------------------------------------------------------------------------------------
// 404 要在 routes 的最後面
app.use((req, res) => {
    res.type('text/plain');
    res.status(404);
    res.send('404 搞事仔');
});

app.listen(3000, () => {
    console.log('proj_d server start');
});
