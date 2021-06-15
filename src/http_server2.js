const http = require('http');
const fs = require('fs');
const server = http.createServer((req, res)=>{
    fs.writeFile(__dirname + '/headers01.json',JSON.stringify(req.headers),error=>{
            if(error){
                res.end(error);
                return;
            }
            res.end('ok');
        });
});

server.listen(3000);
