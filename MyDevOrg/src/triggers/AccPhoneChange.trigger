trigger AccPhoneChange on Account (before insert,before update) {
    list<Account>accs=[select id,name,phone,(select id,name,phone from contacts)from Account where id in :Trigger.new];
    if(Trigger.isupdate){
        for(Account a:accs){
            if (a.phone != Trigger.oldMap.get(a.Id).phone){
                for(contact c:a.contacts){
                    
                    c.phone=a.phone;
                    
            }
        }
    }
    
    }
}