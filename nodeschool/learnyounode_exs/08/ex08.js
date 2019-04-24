var http = require('http')

http.get(process.argv[2], function (response) {
    var responses = '';
    //response.setEncoding('utf8');
    response.on('data', function (data) {
        responses += data.toString();
    });
    response.on('end', function() {
        console.log(responses.length);
        console.log (responses);
    });
    response.on('error', console.error);
});

