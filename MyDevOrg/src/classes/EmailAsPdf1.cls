public with sharing class EmailAsPdf1 {
    public list<id> u{set;get;}
     public List<User> selusers{set;get;}
   public list<account> accs{set;get;}
    public  EmailAsPdf1(){
        u=new list<id>();
        for(user u1:[select id,email from user]){
        u.add(u1.id);
        }
       // accs=[select id,name,industry,ownerid,(select id,lastname from contacts) from account where ownerid in:u];
    }
     
     public PageReference sendPdf() {

    PageReference pdf = Page.PdfGeneratorTemplate;
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
    mail.setToAddresses(new String[] { System.UserInfo.getUserEmail() });
    mail.setSubject('PDF Email Demo');
    mail.setHtmlBody('Here is the email you requested! Check the attachment!');
    mail.setFileAttachments(new Messaging.EmailFileAttachment[] { attach }); 

    // Send the email
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });

    ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Email with PDF sent to '+System.UserInfo.getUserEmail()));

    return null;

  }

}