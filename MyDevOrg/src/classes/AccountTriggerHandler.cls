public class AccountTriggerHandler {
    public static void beforeInsert(List<Account>accList){
        List<string>nameList=new List<string>();
        set<string>duplicate=new set<string>();
        for(Account a:accList){
            nameList.add(a.name);            
        }
    List<Account>result=[select name from Account where name in:nameList];
        if(result.size()>0){
            for(Account a1:result){
                duplicate.add(a1.name);
            }
            for(Account acc:accList){
                if(duplicate.contains(acc.name)){
                    acc.addError('Duplicate name Exists');
                }
            }
            
        }
    }

    public  static void afterInsert(List<Account>accList){
        List<Contact>cons=new List<Contact>();
        for(Account a:accList){
            Contact c=new Contact();
            c.LastName=a.name;
            c.AccountId=a.id;
            cons.add(c);
                    }
        insert cons;
    }
}