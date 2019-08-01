global class AccountTriggerControllerREST{
 
    @Future(callout=true)
    public static void addPDFAttach(string sessionId, list<id> accountIdList){
       HttpRequest req = new HttpRequest();
       req.setEndpoint('https://'+URL.getSalesforceBaseUrl().getHost()+'/services/apexrest/AddPDFtoRecordREST/');
       req.setMethod('POST');
       req.setBody('{"accountIdList":'+JSON.serialize(accountIdList)+'}');
       req.setHeader('Authorization', 'Bearer '+ sessionId);
       req.setHeader('Content-Type', 'application/json');
       Http http = new Http();
       if(!test.isRunningTest()){
           HTTPResponse res = http.send(req);
       }
    }
}