trigger amountMust on Transaction__c (after insert) {
   
    List<Transaction__c> trans=[select Amount__c from Transaction__c where Id in:Trigger.New];
    
  for(Transaction__c t:trans){
        if((t.Amount__c==null)){
            t.Amount__c=0;
        }
     }
update trans;
    
    List<Transaction__c> trans1=[select Amount__c from Transaction__c where Id NOT in:Trigger.New];
    
  for(Transaction__c t1:trans1){
        if((t1.Amount__c==null)){
            t1.Amount__c=0;
        }
     }
update trans1;
    
}