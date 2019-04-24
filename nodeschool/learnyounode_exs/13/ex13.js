var http = require('http');
var urlParser = require('url');

function serverFun(request, response) {
    var jsonRes;
    if (request.method == 'GET') {
        var urlParsed = urlParser.parse(request.url, true);
        var query = urlParsed.query;
        var date = new Date(query["iso"]);

        console.log(urlParsed.pathname);
        console.log(date);

        if (urlParsed.pathname == '/api/parsetime') {
            jsonRes = handleTime(date);
        } else if (urlParsed.pathname == '/api/unixtime') {
            jsonRes = handleUnixTime(date);
        }
    }
    response.writeHead(200, {
        'Content-Type': 'application/json'
    });
    response.write(JSON.stringify(jsonRes));
    response.end();
};

function handleTime(date) {
    console.log(date);
    var res = {
        'hour': date.getHours(),
        'minute': date.getMinutes(),
        'second': date.getSeconds()
    };
    console.log(res);
    return res;
};

function handleUnixTime(date) {
    console.log(date);
    var res = {
        'unixtime': date.getTime()
    };
    console.log(res);
    return res;
};

var server = http.createServer(serverFun);

server.listen(Number(process.argv[2]));
