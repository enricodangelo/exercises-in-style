var fs = require('fs')

var filename = process.argv[2]
var buffer
var myCallback = function(err, data) {
    if (err) {
        throw err
    }
    buffer = data

    var count = 0;
    for (i = 0; i < buffer.length; i++) {
        //console.log(buffer[i])
        if (buffer.toString()[i] === '\n') {
            count++
        }
    }

    console.log(count)
}

fs.readFile(filename, myCallback)

