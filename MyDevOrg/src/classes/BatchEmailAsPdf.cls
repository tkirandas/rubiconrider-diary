global class BatchEmailAsPdf  implements Database.Batchable<Sobject>,Database.stateful {
     public Integer count =0;
     public Static  Integer size=0;
    public list<account> accs{set;get;}
  public   map<string,Pagereference> emf=new map<string,Pagereference>();
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select id,name,email from User');
    }
    global void execute(Database.BatchableContext bc,List<User> scope){
        for(User u:scope){
            accs=[select id,name,(select id,lastname,email from contacts) from Account where ownerid=:u.id];
           
          emf.put(u.email, controller2.saveToPdf(u));
              //  system.debug(emf.size()); 
          // boolean k=emf.containsKey('sammy@salesforce.com');
        
     // system.debug(k);
            
            
     }
   
    }
    global void finish(Database.BatchableContext bc){
/*
   
             PageReference pdf = Page.BatchEmailasPdf;
    // add parent id to the parameters for standardcontroller
     // the contents of the attachment from the pdf
    Blob body;

    try {

      // returns the output of the page as a PDF
      body = pdf.getContent();

    // need to pass unit test -- current bug  
    } catch (VisualforceException e) {
      body = Blob.valueOf('Some Text');
    }

    Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
    attach.setContentType('application/pdf');
    attach.setFileName('testPdf.pdf');
    attach.setInline(false);
    attach.Body = body;

    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    mail.setUseSignature(false);
    mail.setToAddresses(new String[] {  });
    mail.setSubject('PDF Email Demo');
    mail.setHtmlBody('Here is the email you requested! Check the attachment!');
    mail.setFileAttachments(new Messaging.EmailFileAttachment[] { attach }); 

    // Send the email
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
*/        
}
    
}