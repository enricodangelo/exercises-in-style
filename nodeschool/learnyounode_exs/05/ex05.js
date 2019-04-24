var fs = require('fs')

var dirname = process.argv[2]
var ext = process.argv[3]

var myCallback = function(err, data) {
    if (err) {
        throw err
    }
    var filenames = data

    for (i = 0; i < filenames.length; i++) {
        if (filenames[i].endsWith('.' + ext)) {
            console.log(filenames[i])
        }
    }
}

fs.readdir(dirname, myCallback)

