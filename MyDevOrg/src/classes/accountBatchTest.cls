global class accountBatchTest implements Database.Batchable<Sobject>
{
    global Set<Id> failureIdsSet;
     string query='SELECT id,name,status__c from Account  LIMIT 5';
    global database.QueryLocator start(Database.BatchableContext BC)
    {
       return Database.getQueryLocator(query);
     }
    
    global void execute(Database.BatchableContext BC, List<Account> scope) { 
    failureIdsSet = new Set<Id>();
        List<Account> accountList = new List<Account>();
    for(Account acct : scope){
      //Account acct = (Account) s;
      acct.status__C='WARM';
       accountList.add(acct);
    }
         if(accountList.size() > 0) {
        //Update records
        List<Database.SaveResult> dsrs = Database.Update(accountList, false);

        for(Database.SaveResult dsr : dsrs){
            
            if (dsr.isSuccess()) {
             }else{
                    for(Database.Error err : dsr.getErrors()) {
                        System.debug(err.getStatusCode() + ': ' + err.getMessage());
                        failureIdsSet.add(dsr.getId());
                    }
                 system.debug('@#$failureIdsSet'+failureIdsSet);
             }
            /********here you will check for failed record ******
            if(!dsr.isSuccess()){
                String errMsg = dsr.getErrors()[0].getMessage();
                /*******Send mail here************************/
            }

        }
    }
    
    
    global void finish(Database.BatchableContext BC){

}


}