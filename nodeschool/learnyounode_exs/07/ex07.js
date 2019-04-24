//var http = require('http')
//var endpoint = process.argv[2]
//
//http.get(endpoint, function(request) {
//    request.on('data', function(data) {
//        console.log(data.toString());
//    });
//});

var http = require('http')

http.get(process.argv[2], function (response) {  
    response.setEncoding('utf8')  
        response.on('data', console.log)  
        response.on('error', console.error)  
})


