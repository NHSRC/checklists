var fs = require('fs');
var http = require('http');

var maxPageNumber = 297;
var entityPostResources = {
    "district": "districts",
    "checkpoint": "checkpoints",
    "measurableElement": "measurableElements",
    "standard": "standards",
    "checklist": "checklists",
    "facility": "facilities",
    "assessmentTool": "assessmentTools"
};

function postPage(pageNumber) {
    function postEntity(entityType, entities, entityNumber) {
        var entity = entities[entityNumber];
        var links = entity["_links"];
        if (links !== null || links !== undefined) {
            var linkKeys = Object.keys(links);
            for (var linkKeyIndex in linkKeys) {
                var linkKey = linkKeys[linkKeyIndex];
                if (linkKey.endsWith("UUID"))
                    entity[linkKey] = links[linkKey].href;
                else if (linkKey.endsWith("UUIDs")) {
                    entity[linkKey] = links[linkKey].map(function (obj) {
                        return obj.href;
                    });
                }
            }
            entity["_links"] = null;
        }
        var entityJSON = JSON.stringify(entity);
        var resource = (entityPostResources[entityType] === null || entityPostResources[entityType] === undefined) ? entityType : entityPostResources[entityType];
        var request = new http.ClientRequest({
            hostname: "localhost",
            port: 6001,
            path: "/api/" + resource,
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "Content-Length": Buffer.byteLength(entityJSON)
            }
        });
        request.end(entityJSON);
        request.on('response', function (response) {
            console.log(response);
            if (response.statusCode >= 500) {
                console.log("Post failed for " + entityType + "; STATUS_CODE: " + response.statusCode);
                return;
            }
            if (entities.length > entityNumber + 1)
                postEntity(entityType, entities, entityNumber + 1);
            else if (pageNumber <= maxPageNumber) {
                console.log('Processed ' + entityNumber + " entities, of type " + entityType + ", and reached end of page");
                postPage(pageNumber + 1);
            } else {
                console.log('EXITING: ' + entityNumber + " current entity type: " + entityType + ", page number: " + pageNumber);
            }
        });
    }

    console.log('Processing page number: ' + pageNumber);
    var jsonString = fs.readFileSync('./nhsrc/output/recorded-response/jsons/' + pageNumber + '.json', 'utf8');
    var page = JSON.parse(jsonString);
    var embeddedEntities = page['_embedded'];
    var keys = Object.keys(embeddedEntities);
    for (var j in keys) {
        if (keys[j] !== '_links' && keys[j] !== '_page') {
            var entityType = keys[j];
            var entities = embeddedEntities[entityType];
            if (entities.length > 0)
                postEntity(entityType, entities, 0);
        }
    }
}

postPage(214);