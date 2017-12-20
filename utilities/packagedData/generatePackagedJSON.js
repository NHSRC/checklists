var fs = require('fs');

var generate = function (inputBaseDir, outputDir) {
    var files = fs.readdirSync(inputBaseDir);
    var i = 0;
    var message = "[";
    files.forEach(function (file) {
        if (file.indexOf(".json") >= 0 && file !== '.' && file !== '..')
            message += "require('../../config/" + file + "),";
    });

    files.forEach(function (file) {
        if (file.indexOf(".json") < 0 && file !== '.' && file !== '..') {
            var stateFiles = fs.readdirSync(inputBaseDir + "/" + file);
            stateFiles.forEach(function (stateFile) {
                message += "require('../../config/" + file + "/" + stateFile + "'),";
            });
        }
    });
    message += "];";
    message = message.replace(",];", "];");

    fs.writeFileSync(outputDir + '/PackagedJSON.js', message);
};

generate('./nhsrc/output/recorded-response/jsons/4', './nhsrc/output/recorded-response');
