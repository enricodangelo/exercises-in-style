var through = require("through2");
var split = require("split");

var odd = true;

function transformToUpper(buffer, enc, next) {
    if (odd) {
        this.push(buffer.toString().toLowerCase() + '\n');
    } else {
        this.push(buffer.toString().toUpperCase() + '\n');
    }

    odd = odd ? false : true;
    next();
}

process.stdin.pipe(split()).pipe(through(transformToUpper)).pipe(process.stdout);
