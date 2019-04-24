var through = require("through2");

function transformToUpper(buffer, enc, next) {
    this.push(buffer.toString().toUpperCase());
    next();
}

process.stdin.pipe(through(transformToUpper)).pipe(process.stdout);
