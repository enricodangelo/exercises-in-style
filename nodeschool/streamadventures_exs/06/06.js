var concat = require('concat-stream');

function reverse(content) {
    this.push(content.toString().split('').reverse().join('') + '\n');
};

process.stdin.pipe(concat(reverse)).pipe(process.stdout);
