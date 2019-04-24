var ex06Module = require('./ex06Module.js')

var dirname = process.argv[2]
var ext = process.argv[3]

var myCallback = function(err, data) {
    if (err) {
        throw err
    }
    data.forEach(function(element, index, array) {
        console.log(element)
    })
}

ex06Module(dirname, ext, myCallback)

