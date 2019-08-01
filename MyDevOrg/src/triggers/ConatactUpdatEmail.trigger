trigger ConatactUpdatEmail on Account (before insert,before update) {
map<id,account>oldmap=trigger.oldmap;
map<id,account>newmap=trigger.newmap;
    list<id>accs=new list<id>();
    if(Trigger.isUpdate){
    for(Id k:oldmap.keySet()){
        if(oldmap.get(k).phone!=newmap.get(k).phone){
            accs.add(k);
        }
    }
    
    list<contact>conlist=[select id,email,phone,accountid from contact where accountid in:accs];
    for(contact c:conlist){
        c.phone=newmap.get(c.AccountId).phone;
        
        messaging.SingleEmailMessage email1=new messaging.SingleEmailMessage();
       string[]toadd=new string[]{c.Email};
           email1.setToAddresses(toadd);
        email1.setSubject('contact no changed');
        email1.setPlainTextBody('we have changed your contact number with associated account number');
        messaging.sendEmail(new messaging.SingleEmailMessage[]{email1});
        
    }
    update conlist;
}
}