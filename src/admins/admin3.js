const express = require('express');
const router = express.Router();

router.route('/member/edit/:id')
    .all((req, res, next)=>{
        res.locals.myData = '111';
        next();
    })
    .get((req, res)=>{
        res.json({
            baseUrl: req.baseUrl,
            url: req.url,
            myData: res.locals.myData
        });
    })
    .post((req, res)=>{
        res.send(res.locals.myData);
    });

module.exports = router;


