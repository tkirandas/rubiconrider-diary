public class EmailExample3 {
    public void emailCall(){
        Messaging.SingleEmailMessage email1=new Messaging.SingleEmailMessage();
        EmailTemplate t=[select id from EmailTemplate where name='Test1'];
        email1.setTemplateId(t.id);
        contact c=[select id from contact where phone='4567'];
        email1.setTargetObjectId(c.id);
        Application__c ap=[select id from Application__c limit 1];
        email1.setWhatId(ap.id);
        Messaging.Email[] emails=new Messaging.Email[]{email1};
            Messaging.sendEmail(emails);
    }
    
}