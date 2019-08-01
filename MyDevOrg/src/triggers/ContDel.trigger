trigger ContDel on Account (before delete) {

    List<Account> accs=[select id,(Select id from Contacts) from Account where Id In:Trigger.Old];
    for(Account a:accs){
        if(a.contacts.size() > 0){
            a.addError('Account Record with contact can not be deleted');
        }
    }
}