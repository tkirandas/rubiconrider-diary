trigger srkrecordtypeowner on Contact (before insert) {             
    Map<string,Id> RecordTypeids=new Map<string,Id>();
    for(RecordType r:([select id,name from RecordType where SobjectType='Contact'])){
        RecordTypeids.put(r.name,r.id);
    }
    for(contact c:Trigger.new){
        if(c.new_Record_type__c=='candidate'){
           c.RecordTypeId=RecordTypeids.get('candidate');
            c.OwnerId=UserInfo.getUserId();
        }
        else 
            if(c.new_Record_type__c=='employee'){
                user u=[select id from user where alias='rride' limit 1];
                c.RecordTypeId=RecordTypeids.get('employee');
                c.OwnerId=u.id;
            }                                                
    }     
}