public class InboundExample implements Messaging.InboundEmailHandler{
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope env){
            
        Messaging.InboundEmailResult result=new Messaging.InboundEmailResult();
        try{
            case c=new case();
            c.status='New';
            c.origin='Email';
            c.subject=email.subject;
            c.Description=email.plainTextBody;
            insert c;
            result.success=true;
        }catch(Exception e){
            result.success=false;
        }
        		return result;
        }
   
    

}