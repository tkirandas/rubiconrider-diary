trigger accAfter on Account (after insert) {
    List<Account> accs=[select id,industry,type from Account where Id in:Trigger.New];
    for(Account a:accs){
        if(a.industry=='Banking'){
            a.Type='Other';
            
        }
    }
update accs;
}