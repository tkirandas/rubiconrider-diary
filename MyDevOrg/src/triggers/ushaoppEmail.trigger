trigger ushaoppEmail on Account (before insert,after insert,before update) {
     if(trigger.isinsert && trigger.isbefore){
        ushaoppemail.newacc(Trigger.new); 
    }
     if(trigger.isinsert && trigger.isafter){
        ushaoppemail.afteracc(Trigger.new); 
    }
     if(trigger.isupdate && trigger.isbefore){
        ushaoppemail.beforeupdate(Trigger.new); 
    }
}