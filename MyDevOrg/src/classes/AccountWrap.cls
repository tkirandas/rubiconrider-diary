public class AccountWrap {
    public string name{set;get;}
public string industry{set;get;}
    public string phone{set;get;}
    public AccountWrap(string name,string industry,string phone){
        this.name=name;
        this.industry=industry;
        this.phone=phone;
        
    }
}
/*
 Debug
List<AccountWrap>accList=new List<AccountWrap>();
    AccountWrap a1=new AccountWrap('KIRAN','Software','1234');
accList.add(a1);
system.debug(accList);
List<Account> accs=new List<Account>();
for(AccountWrap ac:accList ){
    Account a=new Account();
   
    a.name=ac.name;
        a.industry=ac.industry;
    a.phone=ac.phone;
    accs.add(a);
    
}
system.debug(accs);
*/