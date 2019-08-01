public class Zapak {
    
    /*Parent to child using Credit card and transaction
credit_card__c cards=[select Name,(select Amount__c from Transctions__r ) from credit_card__c where Name='paul'];
List<Transaction__c>trans=cards.Transctions__r;
for(Transaction__c cm:trans){
    system.debug('Transactions of Paul are:'+cm.Amount__c);
}
//======++++child to parent from transactions to credit card++++=======

Transaction__c trans=[select Amount__c,Credit_Card__r.name from
Transaction__c where Amount__c=4545];
system.debug('Transaction is from:'+trans.Credit_Card__r.name);*/

}