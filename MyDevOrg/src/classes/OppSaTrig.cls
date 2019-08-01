public class OppSaTrig {
    public static void increment(List<Opportunity>opps){
        set<Id>accid=new set<Id>();
        for(Opportunity p:opps){
            accid.add(p.AccountId);
        }
        List<Account> accs=[select id,Total__c,(select id from Opportunities)from Account where id in:accid];
        for(Account a:accs){
            a.Total__c=a.Opportunities.size();
                    }
        update accs;
    }

}