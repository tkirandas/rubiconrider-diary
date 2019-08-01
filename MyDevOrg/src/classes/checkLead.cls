public  class checkLead{
    public  static void Leadupe(List<Lead> a){
     list<lead> l1=[select Company,Email,Phone,Industry,OwnerId,Owner.Name,owner.Email,LastModifiedDate from Lead ];
            List<Lead> upd=new List<Lead>();  	
		for(Lead k:a){
			for(Lead kk:l1){
				//if(kk.name==k.name){
                   if(k.Company==kk.Company && k.Email==kk.Email && k.Phone==kk.Phone && k.Industry==kk.Industry){
                Lead t=kk;
					if((t.LastModifiedDate)>(system.today()-1)){
						//if(kk.Lead_Status__c=='General Pool'){
						t.Lead_Status__c='General Pool';
							if(t.Lead_Owner__c!=null){

        						Messaging.SingleEmailMessage email1=new Messaging.SingleEmailMessage();
    							string[] toadd=new string[]{kk.Email};
    							email1.setToAddresses(toadd);
    							email1.setSubject('your lead'+kk.Id+' has no activity from last 3 days');
        						email1.setplainTextBody('dear'+kk.Owner.Name+' your lead have no activity and lead move to general pool');
       							 //Messaging.SingleEmailMessage email2=new Messaging.SingleEmailMessage();
        						Messaging.Email[] emails=new Messaging.Email[]{email1};
								Messaging.SendEmail(emails);
							}
                        //}
												
						}
					
    					if(t.LastModifiedDate>system.today()-14){
							t.Lead_Status__c='General Pool';
							t.Lead_Owner__c=null;
					}
				
                
                    upd.add(kk);
        k.addError('Duplicate Found');
                }
  
       		}
	}
        update upd;
}
}