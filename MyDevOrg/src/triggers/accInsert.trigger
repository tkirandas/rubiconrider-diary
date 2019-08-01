trigger accInsert on Account (before insert) {
    for(Account a:Trigger.New){
        if(a.industry=='Banking'){
            a.Type='Other';
        }
    }

}