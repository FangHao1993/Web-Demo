const bluebird = require("bluebird");

const mysql = require("mysql");
const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "proj_dong",
});
db.connect();
bluebird.promisifyAll(db);

module.exports = db;