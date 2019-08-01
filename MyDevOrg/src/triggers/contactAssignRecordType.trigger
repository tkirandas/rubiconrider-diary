trigger contactAssignRecordType on Contact (before insert,before update) {
    
     
    if (Trigger.isInsert){
       
        list<contact>cons=[select id,firstname,lastname,ownerId,new_Record_type__c,RecordType.Name from contact where id in:Trigger.New];
        for(contact c:cons){
            if(c.new_Record_type__c=='candidate'){
                c.OwnerId=UserInfo.getUserId();
            }
            else 
                if(c.new_Record_type__c=='employee'){
                      user u=[select id from user where alias='rride' limit 1];
                    c.OwnerId=u.id;
                }
                
            
            
        }
    }
   
  
}