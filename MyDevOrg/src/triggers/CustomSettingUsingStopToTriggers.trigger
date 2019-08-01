trigger CustomSettingUsingStopToTriggers on Account (before insert) {
  //this can be done for particular profile or
    cust_set__c cc=cust_set__c.getInstance(System.UserInfo.getUserId());
       
    //this can be done for particular profile
    //cust_set__c cc=cust_set__c.getInstance(System.UserInfo.getProfileId());
    
    if(cc.Status__c){
        for(Account a:trigger.new){
             a.addError('profile is not allowed');
            //field update also can be done
            //a.description ='This is Update from trigger if User is Not Lakshminarayana';
        }
    }
}