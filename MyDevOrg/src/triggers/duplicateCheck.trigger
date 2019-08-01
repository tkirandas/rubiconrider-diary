trigger duplicateCheck on Account (before insert,after update) {
    if(Trigger.isBefore && Trigger.isInsert){
        AccountTriggerHandler.beforeInsert(Trigger.New);
    }else{
if(Trigger.isAfter && Trigger.isInsert){
        AccountTriggerHandler.afterInsert(Trigger.New);
}   
}
}