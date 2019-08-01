@RestResource(urlMapping='/Merchandise/*')
global with sharing class MerchandiseManager {
  
    @HttpGet
    global static Black_List__c getBlackListById() {
        RestRequest req = RestContext.request;        
        String BlackId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Black_List__c result = [SELECT Name,id FROM Black_List__c WHERE Id =:BlackId];
        return result;
    }
  
    @HttpPost
    global static String createBlackLis(String name) {
        Black_List__c m = new Black_List__c(Name=name);
        insert m;
        return m.Id;
    }
}