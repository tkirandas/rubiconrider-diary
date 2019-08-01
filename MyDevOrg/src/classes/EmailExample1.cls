/*Sending an email*/
public class EmailExample1 {
    public void emailCall(){
        Messaging.SingleEmailMessage email1=new Messaging.SingleEmailMessage();
        string[] toadd=new string[]{'ortussalesforce@gmail.com'};
            string[] toCc=new string[]{'tkirandas@gmail.com'};
                email1.setToAddresses(toadd);
        		email1.setCcAddresses(toCc);
        		//email1.setSenderDisplayName('noreply@kirandas.com');
        		email1.setSubject('Test Email');
        		email1.setplainTextBody('This is a test Email');
        Messaging.SingleEmailMessage email2=new Messaging.SingleEmailMessage();
        
            	email2.setToAddresses(toadd);
        		email2.setSenderDisplayName('noreply@kirandas.com');
        		email2.setSubject('HTML BODY');
        		email2.setHtmlBody('<h1>Hello user</h1><font color="red">This is a test mail</font>');
        
        Messaging.Email[] emails=new Messaging.Email[]{email1,email2};
            Messaging.SendEmail(emails);
    }

}