public class ushaoppemail {

  public list<account> acc{set;get;} 
    
    public  ushaoppemail(){
        acc=new list<account>();
                              string u=userinfo.getUserId();
                   acc=[select id,name,industry,ownerid,(select id,lastname,email from contacts) from account where ownerid=:u];
                 
    }
    //before insert
    public static void newacc(list<account> ac){
        for(account a:ac){
            if( a.AnnualRevenue==0 ||a.AnnualRevenue==null){                            
                a.addError('AnnualRevenue can not be empty');
            } 
        }               
    }    
    ///after  insert
    public static void afteracc(list<account> ac){
        string u=userinfo.getUserId();
        user u1=[select id,email from user where id=:u];        
        if(!ac.isEmpty()){ 
            list< opportunity> opp=new list< opportunity>();
            list<contact> con=new list<contact>();
            List<feeditem> ft=new list<feeditem>();
            for(account a:ac){
                opportunity op1=new opportunity();
                op1.name=a.name;
                op1.AccountId=a.id;
                op1.CloseDate=system.today()+30;
                op1.StageName='Need Analysis';
                opp.add(op1);  
                contact c=new contact(); 
                c.lastname=a.name;
                c.AccountId=a.id;
                con.add(c);
                feeditem fd=new feeditem();
                fd.ParentId=a.id;
                fd.body='Hi welcome To This Block';
                fd.Title='FEED ITEM';
                ft.add(fd);                
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setUseSignature(false);
                mail.setToAddresses(new String[] { System.UserInfo.getUserEmail() });
                mail.setSubject('HI   '+a.name+' YOUR ACCOUNT IS CREATED');
                mail.setHtmlBody('Here is the email you requested!');           
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });                
            }    
            insert opp;
            insert con;
            insert ft;            
        }         
    }
    ////before update
    public static pagereference beforeupdate(list<account> ac){
        if(!ac.isEmpty()){
            list<id> accid=new List<id>();      
            for(Account a:ac){
                accid.add(a.id);        
                list<opportunity> op=[select id,StageName from opportunity where accountid=:a.id];       
                for(opportunity o:op ){
                    if(o.StageName=='Need Analysis'){
                        a.addError('Account can not be deleted because opp stage is Need Analysis');
                    } else{
                        if(a.AnnualRevenue!=0 ||a.AnnualRevenue!=null){
                            opportunity op1=new opportunity();
                            op1.name=a.name;
                            op1.AccountId=a.id;
                            op1.CloseDate=system.today()+30;
                            op1.StageName='Qualification';
                            op1.Amount=a.AnnualRevenue;
                            insert op1;
                        }
                         list<id>  u=new list<id>();
                                           for(user u1:[select id from user]){
                                                     u.add(u1.id);
                                                }

                          user u1=[select email from user where id in:u];
                        PageReference pdf = Page.PdfGeneratorTemplate;
                              Blob body;
                             try {      
                                  body = pdf.getContent();
    
                                  } catch (VisualforceException e) {
                                   body = Blob.valueOf('Some Text');
                               }

                         Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
                         attach.setContentType('application/pdf');
                         attach.setFileName('recordsownedbyyou.pdf');
                         attach.setInline(false);
                         attach.Body = body;

                         Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                         mail.setUseSignature(false);
                         mail.setToAddresses(new String[] { u1.email });
                         mail.setSubject('PDF Email Demo');
                          mail.setHtmlBody('Here is the email you requested! Check the attachment!');
                          mail.setFileAttachments(new Messaging.EmailFileAttachment[] { attach });  
                          Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                         ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Email with PDF sent to '+System.UserInfo.getUserEmail()));

                     
                       
                    }
                }
            }
        } 
return null;        
    }
    
}