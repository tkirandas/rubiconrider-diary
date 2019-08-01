public class InboundExCustom2 implements Messaging.InboundEmailHandler{
   public  Payment__c c {set;get;}
    
    
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope env){
                   
     
        Messaging.InboundEmailResult result=new Messaging.InboundEmailResult();
        try{
            
            Payment__c c=new Payment__c();
            c.Amount__c=null;
            c.Email__c=null;
            c.Mobile__c=null;
            c.Payment_Mode__c=null;
            c.Payment_Date__c=system.now();
           
           
            insert c;
            result.success=true;
        }catch(Exception e){
            result.success=false;
        }
        		return result;
        }
   
    

}