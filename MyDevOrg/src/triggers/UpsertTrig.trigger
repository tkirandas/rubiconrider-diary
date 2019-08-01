trigger UpsertTrig on Account (before insert,before update) {
    if(Trigger.isInsert){
        for(Account a:Trigger.new){
            a.description='Inserted';
        }
    }
    if(Trigger.isUpdate){
        for(Account b:Trigger.new){
            b.description='Updated';
        }
    }

}