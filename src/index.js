const express = require('express');
const app = express();
const url = require("url")
const bodyparser = require("body-parser");
const multer = require("multer");
const upload = multer({ dest: "tmp_uploads/" })
const fs = require('fs');
const session = require("express-session");
const moment = require("moment-timezone");
const db = require(__dirname + "/db-connect");



app.set("view engine", "ejs");
app.use(express.static('public'));
app.use(bodyparser.urlencoded({ extended: false }));
app.use(session({
    saveUninitialized: false,
    resave: false,
    secret: "qwerasdfzxcv",
    cookie: {
        maxAge: 1200000,
    }
}));



app.get('/', (req, res) => {
    res.render('home', {
        name: "Bang",
        title: "Bang"
    });
});

app.get('/sales', (req, res) => {
    const data = require(__dirname + "/../data/sales");
    // res.json(data);
    res.render('sales', {
        sales: data
    });
});

app.get('/try-qs', (req, res) => {
    const urlparts = url.parse(req.url, true);
    // res.render('try-qs',{
    //     urlparts : urlparts
    //     });
    res.json(urlparts);
});

app.post("/try-post",
    bodyparser.urlencoded({ extended: false }),
    (req, res) => {
        res.json(req.body);
    })
app.get("/try-post-form", (req, res) => {
    res.render("try-post-form")
});
app.post("/try-post-form", (req, res) => {
    res.render("try-post-form", {
        data: req.body
    });
})
//-------------------------------------------------------------------------------------------
app.get("/dong-form", (req, res) => {
    res.render("dong-form")
});
app.get("/game", (req, res) => {
    res.render("game")
});
app.post("/login-table", (req, res) => {
    res.render("login-table", {
        tabledata: req.body
    });
})
app.get("/login-table", (req, res) => {
    res.render("login-table")
});
//-------------------------------------------------------------------------------------------
//ajax練習
app.get('/try-ajax', (req, res) => {
    res.render('try-ajax');
});
app.post('/try-ajax', (req, res) => {
    res.json(req.body);
});

//上傳檔案
app.get('/try-upload', (req, res) => {
    res.render('try-upload');
});
app.post('/try-upload', upload.single('avatar'), (req, res) => {
    // console.log(req.file);
    // res.json(req.file);
    let result = {
        success: false,
        name: '',
        avatar: '',
    };

    if (req.file && req.file.originalname) {
        switch (req.file.mimetype) {
            case 'image/jpeg':
            case 'image/png':
                fs.createReadStream(req.file.path)
                    .pipe(fs.createWriteStream('public/img/' + req.file.originalname));
                result = {
                    success: true,
                    name: req.body.name,
                    avatar: '/img/' + req.file.originalname,
                };
                break;
            default:
        }
    }
    res.render('try-upload', result);

});

app.get("/my-params1/*?/*?", (req, res) => {
    res.json(req.params);
})

app.get(/^\/09\d{2}\-?\d{3}\-?\d{3}$/, (req, res) => {
    let str = req.url.slice(1);
    str = str.split("-").join("");
    res.send("手機 : " + str);
})
//-------------------------------------------------------------------------------------------
//index.js 呼叫 方式一 src/admins/admin1.js 
const admin1 = require(__dirname + "/admins/admin1");
admin1(app);
//-------------------------------------------------------------------------------------------
//index.js 呼叫 方式二 src/admins/admin1.js 
const admin2 = require(__dirname + "/admins/admin2");
app.use(admin2);
//-------------------------------------------------------------------------------------------
//index.js 呼叫 方式三 src/admins/admin1.js 
const admin3 = require(__dirname + "/admins/admin3");
app.use("/admin3", admin3);
//-------------------------------------------------------------------------------------------
//SESSION
app.get("/try-session", (req, res) => {
    req.session.my_var = req.session.my_var || 0;
    req.session.my_var++;
    res.json({
        my_var: req.session.my_var,
        session: req.session
    })
})
//-------------------------------------------------------------------------------------------

express.howareyou = 'fine';

//-------------------------------------------------------------------------------------------
//登入
app.get("/login", (req, res) => {
    let data = {
        loginUser: req.session.loginUser,
        flashMsg: req.session.flashMsg || "",
    };
    delete req.session.flashMsg;
    res.render("login", data);
});

app.post("/login", (req, res) => {
    const list = {
        qwer: "1234",
        asdf: "123",
    };
    if (req.body.user && list[req.body.user] && list[req.body.user] === req.body.password) {
        //判斷req.body.user是否有值 && list 中否有[req.body.user]這個值 &&  list 中[req.body.user] 對應的密碼是否一致
        req.session.loginUser = req.body.user
    } else {
        req.session.flashMsg = "帳號密碼輸入錯誤"
    }
    res.redirect("/login");
})

//-------------------------------------------------------------------------------------------
//登出
app.get("/logout", (req, res) => {
    delete req.session.loginUser;
    res.redirect("/login");
})
//-------------------------------------------------------------------------------------------
//時間
app.get("/try-moment", (req, res) => {
    const fm = "YYYY-MM-DD HH:mm:ss";
    const mo1 = moment(req.session.cookie.expires);
    const mo2 = moment(new Date());
    res.json({
        local_1: mo1.format(fm),
        local_2: mo2.format(fm),
        local_3: mo1.tz("Europe/London").format(fm),
        local_4: mo2.tz("Europe/London").format(fm),
    })
})
//-------------------------------------------------------------------------------------------
// mysql 資料庫
app.get("/try-db/:page?", (req, res) => {
    const perPage = 5;
    const output = {
        prePage: perPage,
    };
    page = parseInt(req.params.page) || 1;
    output.page = page;
    let sql1 = "select count(1) num from products";
    let sql2 = `select * from products LIMIT ${(page-1)*5},5`;
    
    db.query(sql1, (error, results) => {
        output.total = results[0].num;
        output.totalPages = Math.ceil(output.total/perPage);
        if(page<1 || page>output.totalPages){
            return res.redirect("/try-db");
        };
        db.query(sql2,(error,results)=>{
            output.rows = results;
            res.json(output);
        })
    });
});
//-------------------------------------------------------------------------------------------
//資料庫 bluebird
app.get('/try-db2/:page?', (req, res)=>{
    const perPage = 5;
    const output = {
        perPage: perPage
    };
    let page = parseInt(req.params.page) || 1;
    output.page = page;

    let sql1 = "SELECT COUNT(1) num FROM products";
    let sql2 = `SELECT * FROM products LIMIT ${(page-1)*5}, 5`;

    db.queryAsync(sql1)
        .then(results=>{
            output.total = results[0].num;
            output.totalPages = Math.ceil(output.total/perPage);

            if(page<1 || page>output.totalPages){
                return res.redirect('/try-db');
            }
            return db.queryAsync(sql2);
        })
        .then(results=>{
            output.rows = results;
            res.json(output);
        })
        .catch(error=>{
            console.log(error);
        });
});
//-------------------------------------------------------------------------------------------
//404 ERROR
app.use((req, res) => {
    res.type('text/plain');
    res.status(404);
    res.send('404  搞事仔');
});

app.listen(3000, () => {
    console.log('server start');
});





