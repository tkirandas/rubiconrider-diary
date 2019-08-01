public class child2Parent {
    public list<contact>cons{set;get;}
    public list<Transaction__c>trans{set;get;}
    
    public child2Parent(){
        
        cons=[select LastName,FirstName,Account.name,Account.Industry from contact];
        
        trans=[select Amount__c,Credit_Card__r.Card_Type__c from Transaction__c];
    }

}