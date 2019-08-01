global class contRateBatch implements Database.Batchable<Sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select LastName,FirstName,Phone,Email,Fax,Score__c from Contact');
            }
    global void execute(Database.BatchableContext bc,List<Contact>scope){
        for(Contact c:scope){{
               integer score=0;
            if((c.LastName!=null) ){
                score=5;
                }
           if((c.FirstName!=null)){
                score=10;
                }
           if((c.Phone!=null)){
                score=15;
                }
              if((c.Email!=null)){
                score=20;
            }
            if((c.Fax!=null)){
                score=25; 
                }
           // score=0;
             c.Score__c=null;
     
                }
                            
        update scope;
}        
}
        //insert scope;
       // ;
    
    global void finish(Database.BatchableContext bc){
        system.debug('This is Finish');
    }
}