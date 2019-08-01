global class masthanBatchdoubt implements Database.Batchable<sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select id,Amount from Opportunity limit 5');
            }
    global void execute(Database.BatchableContext bc,list<Opportunity> scope){
        for(Opportunity o:scope){
            o.Amount=70000;
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        system.debug('this is amount');
    }
}


//dbug

 //batchapex1 be=new batchapex1();
   // Database.executeBatch(be,2);