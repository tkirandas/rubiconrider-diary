public class soqlPrnt2Child {
    public List<Account>accs{set;get;}
    public List<Customer__c>cards{set;get;}
    public void  soqlPrnt2Child(){
        accs=[select name,industry,(select lastname,firstname from Contacts)from Account LIMIT 500];
 //cards=[select First_Name__c,Email__c from Customer__c];
    
        //,(select Amount__c,Service_Tax__c from Transaction__r where Amount__c>100 )
    
        
cards=[select First_Name__c,Email__c,(select Amount__c,Transaction_Type__c from Transctions__r)from Customer__c];

        
        
        //cards=[select Card_Type__c,Card_Limit__c,(select Amount__c,Customer__c,Transaction_Type__c from Transaction__r)from
//credit_card__c]

    }

}