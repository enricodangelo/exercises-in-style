var http = require('http');
var map = require('through2-map');

function serverFun(request, response) {
    if (request.method == 'POST') {
        request.pipe(map(uppercaser)).pipe(response);
    }
};

function uppercaser(chunk) {
    return chunk.toString().toUpperCase();
};

var server = http.createServer(serverFun);

server.listen(Number(process.argv[2]));
