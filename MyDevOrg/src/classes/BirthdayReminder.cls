global class BirthdayReminder implements database.Batchable<sobject>{
    global database.QueryLocator start(database.BatchableContext bc){
        date tod=system.today();
        string soql='select id,name,email,Birthdate from contact where DAy_IN_MONTH(Birthdate)='+tod.day()+'AND CALENDAR_MONTH(Birthdate)='+tod.month();
        return database.getQueryLocator(soql);
    }
    global void execute(database.BatchableContext bc,list<contact>cc){
        list<Messaging.SingleEmailMessage> emails=new list<Messaging.SingleEmailMessage>();
       
        for(contact c:cc){
            Messaging.SingleEmailMessage mm=new   Messaging.SingleEmailMessage();
            list<string>to=new list<string>();
            to.add(c.email);
           
            mm.setToAddresses(to);
            mm.setSubject('Happy Birthday');
            mm.SetplainTextBody('malli');
            mm.SetHTMLBODY('ghg');
            emails.add(mm);
        }
        messaging.sendEmail(emails);
    }
    public void finish(database.BatchableContext bc){
        
    }
}