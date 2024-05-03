
import ballerina/log;
import ballerina/http;

type Response record {
    string name;
    string message;
};

configurable string dbHost = "localhost";

configurable int dbPort = 8090;

service / on new http:Listener(8090) {
    resource function get .(string name) returns Response {
        log:printInfo("Greetings for :" + name);
        Response resp = {"name" : name, "message" : "Greetings!"};
        return resp;
    }
}
