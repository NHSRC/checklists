var fs = require('fs');

var generate = function (inputBaseDir, outputDir) {
    var files = fs.readdirSync(inputBaseDir);
    var i = 0;
    var message = "class PackagedJSON {\n" +
        "    static getFiles() {\n" +
        "        return [";
    files.forEach(function (file) {
        if (file.indexOf(".json") >= 0 && file !== '.' && file !== '..') {
            message += "require('../../config/" + i++ + ".json'),";
        }
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

    message += "}\n" +
        "}\n" +
        "\n" +
        "export default PackagedJSON;";

    fs.writeFileSync(outputDir + '/PackagedJSON.js', message);
};

generate('./nhsrc/output/recorded-response/jsons/4', './nhsrc/output/recorded-response');
