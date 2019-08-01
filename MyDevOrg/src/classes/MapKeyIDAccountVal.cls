public class MapKeyIDAccountVal {
    //Creating map with account id as key and account as value
Map<Id,Account> accMap=new Map<Id,Account>();
    Map<Id,Sobject>accMaps=new Map<Id,Sobject>();
   public List<SelectOption> fieldsList 	{set;get;}
    public List<SelectOption>  operatorList	{set;get;}
    public String selected					{set;get;}
    public String operator					{Set;get;}
    public String value						{Set;get;}
    List<Account>accs{set;get;}
//Account a1=new Account(Name='Wipro',industry='Engineering',phone='123');
//Account a2=new Account(Name='zen',industry='Engineering',phone='456');






}