global class BatchExample2 implements Database.Batchable<Sobject>,Database.stateful {
     public Integer count =0;
     public Static  Integer size=0;
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select id,description from Account');
    }
    global void execute(Database.BatchableContext bc,List<Account> scope){
        for(Account a:scope){
            count=count+1;
            size=size+1;
        }
    }
    global void finish(Database.BatchableContext bc){
       Account a2=new Account();
        a2.name='Batch.job:'+bc.getJobId();
            a2.description='Count :'+count+':size :'+size;
        insert a2;
      /* Calling another BatchAPex
        BatchExample bb=new BatchExample();
Database.executeBatch(bb, 5);
*/
    }
}