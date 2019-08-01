global class AmountMustBatch implements Database.Batchable<Sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select id,Amount__c from Transaction__c');
            }
    global void execute(Database.BatchableContext bc,List<Transaction__c>scope){
        for(Transaction__c a:scope){
            if((a.Amount__c==null)){
            a.Amount__c=0;
            }
        }
        //insert scope;
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        system.debug('This is Finish');
    }
}