
import ballerina/log;
import ballerina/http;

type Response record {
    string name;
    string message;
};

service / on new http:Listener(8090) {
    resource function get .(string name) returns Response {
        log:printInfo("Greetings for :" + name);
        Response resp = {"name" : name, "message" : "Greetings!"};
        return resp;
    }
}
