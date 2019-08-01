public class InboundExampleCustom implements Messaging.InboundEmailHandler{
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope env){
            
        Messaging.InboundEmailResult result=new Messaging.InboundEmailResult();
        try{
            Payment__c c=new Payment__c();
            c.Amount__c=5000;
            c.Email__c='tki@abc.com';
            c.Mobile__c='987654321';
            c.Payment_Mode__c='cash';
            c.Payment_Date__c=system.now();
           
            insert c;
            result.success=true;
        }catch(Exception e){
            result.success=false;
        }
        		return result;
        }
   
    

}