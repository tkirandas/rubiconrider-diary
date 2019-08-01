global class BatchExample implements Database.Batchable<Sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select id,description from Account');
            }
    global void execute(Database.BatchableContext bc,List<Account>scope){
        for(Account a:scope){
            a.description='This is test';
            
        }
        //insert scope;
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        system.debug('This is Finish');
    }
}