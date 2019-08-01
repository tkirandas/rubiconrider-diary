public class contRatingEx {
   public  List<Contact> cont{set;get;}
    public List<Contact> con1{set;get;}
   Public static boolean flag=true;
    public integer rating{set;get;}
         
    public static void calc(List<contact> cont){
         List<contact> cons=[select lastName,firstName,phone,email,AccountId,MailingAddress,MobilePhone,LeadSource,ReportsToId,Fax,Department from contact where id in :cont];
        for(contact c:cons){
           integer score=0;
            if((c.LastName!=null) ){
                score=5;
                }
           if((c.FirstName!=null)){
                score=10;
                }
           if((c.Phone!=null)){
                score=15;
                }
              if((c.Email!=null)){
                score=20;
            }
            if((c.Fax!=null)){
                score=25; 
                }
           // score=0;
             c.Score__c=score;
     
                }
        update cons;
        //system.debug(cont);
    }
    
public Static  void updating(List<Contact> con1){
        if(flag==true){
            flag=false;
            contRatingEx.calc(con1);
        }
          }
 }