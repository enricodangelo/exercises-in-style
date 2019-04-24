function formatTodayDate() {
    var now = new Date();
    var formattedDate = now.getFullYear() 
        + "-" 
        + String("00" + (now.getMonth() + 1)).slice(-2) 
        + "-" 
        + String("00" + now.getDate()).slice(-2) 
        + " " 
        + String("00" + now.getHours()).slice(-2) 
        + ":" 
        + String("00" + now.getMinutes()).slice(-2);
    return formattedDate;
}

function timeServer(socket) {
    var date = formatTodayDate();
    socket.write(date);
    socket.write("\n");
    socket.end();
}
var net = require('net');
var server = net.createServer(timeServer);
server.listen(process.argv[2]);
