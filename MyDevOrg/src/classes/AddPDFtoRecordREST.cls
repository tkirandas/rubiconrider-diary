@RestResource(urlMapping='/addPDFtoRecordREST/*')
global with sharing class AddPDFtoRecordREST{
   
  @HttpPost
    global static void doPost(list<String> accountIdList) {
       list<attachment> insertAttachment = new list<attachment>();
        for(String accId: accountIdList){
            //create a pageReference instance of the VF page.
            pageReference pdf = Page.pdfRenderPage;
            //pass the Account Id parameter to the class.
            pdf.getParameters().put('id',accId);
            Attachment attach = new Attachment();
            Blob body;
            if(!test.isRunningTest()){
                body = pdf.getContent();
            }else{
                body=blob.valueOf('TestString');
            }
            attach.Body = body;
            attach.Name = 'pdfName'+accId+'.pdf';
            attach.IsPrivate = false;
            attach.ParentId = accId;//This is the record to which the pdf will be attached
            insertAttachment.add(attach);
         }
         //insert the list
         insert insertAttachment;
    }

}