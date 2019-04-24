var fs = require('fs')

var filename = process.argv[2]
var buffer = fs.readFileSync(filename)
    
var count = 0;
for (i = 0; i < buffer.length; i++) {
    //console.log(buffer[i])
    if (buffer.toString()[i] === '\n') {
        count++
    }
}

console.log(count)
