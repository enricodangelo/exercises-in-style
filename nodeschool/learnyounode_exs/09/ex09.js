var http = require('http')

var urls = [process.argv[2], process.argv[3], process.argv[4]]
var resps = ["", "", ""];
var count = 0;

urls.forEach((url, i) => {
    http.get(url, (response) => {
        var localResp = '';
        response.on('data', (data) => {
            localResp += data.toString();
        });
        response.on('end', function() {
            resps[i] = localResp;
            count++;

            if (count === 3) {
                //print the responses in order
                console.log(resps.join("\n"));
            }
        });
        response.on('error', console.error);
    });
});
