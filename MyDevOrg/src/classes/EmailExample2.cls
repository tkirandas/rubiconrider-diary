/*Sending an email attachment here "InvoicePage" as attachment*/
public class EmailExample2 {
    public list<Account> accs{set;get;}
    public ID AccountId{set;get;}
 
    
    public void emailCall(){
        Messaging.SingleEmailMessage email1=new Messaging.SingleEmailMessage();
        string[] toadd=new string[]{'tkirandas2105@gmail.com'};
            //string[] toCc=new string[]{'tkirandas@gmail.com'};
            //email1.setCcAddresses(toCc);
            //email1.setSenderDisplayName('noreply@kirandas.com');
        	email1.setToAddresses(toadd);	
            email1.setSubject('Test Email');
        		email1.setplainTextBody('This is a test Email');
        //ex1();
        PageReference p=Page.InvoicePage;
        
        p.getParameters().put('id',AccountId);
        blob body =p.getContentAsPDF();
        
        Messaging.EmailFileAttachment ef1=new Messaging.EmailFileAttachment();
        ef1.setFileName('Bill for the month of Jan.pdf');
        ef1.setBody(body);
        Messaging.EmailFileAttachment[] attachments=new Messaging.EmailFileAttachment[]{ef1};
            email1.setFileAttachments(attachments);
        Messaging.Email[] emails=new Messaging.Email[]{email1};
            Messaging.sendEmail(emails);
        
    }
    public  void ex1(){
        accs=[select id,name from Account];
       
    }

}