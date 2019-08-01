trigger TaskRelated on Task (before insert,before update) {
    if(trigger.isInsert){
        
       // List<Task>l1=[select OwnerId from Task where id in:Trigger.new];
        list<Task_Tracking__c> l2=[SELECT CreatedById FROM Task_Tracking__c where CreatedDate=:system.now()];
        for(Task_Tracking__c k:l2){
            k.No_of_Open_Tasks__c+=1;
        }
        
    }else if(trigger.isUpdate){
        
    }


}