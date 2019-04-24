var fs = require('fs');
var http = require('http');

function fileServer(request, response) {
    var fileReader = fs.createReadStream(process.argv[3]);

    response.writeHead(200, {
        'content-type': 'text/plain'
    });
    fileReader.pipe(response);
}

var server = http.createServer(fileServer);
server.listen(Number(process.argv[2]));
