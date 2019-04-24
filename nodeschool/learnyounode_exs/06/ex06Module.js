module.exports = function(dirname, ext, callback) {
    var fs = require('fs')
    
    var filterCallback = function(err, data) {
        if (err) {
            return callback(err)
        }

        var unfilteredFiles = data
        var filteredFiles = new Array()

        for (i = 0; i < unfilteredFiles.length; i++) {
            if (unfilteredFiles[i].endsWith('.' + ext)) {
                filteredFiles.push(unfilteredFiles[i])
            }
        }
        callback(err, filteredFiles)
    }

    fs.readdir(dirname, filterCallback)
}


