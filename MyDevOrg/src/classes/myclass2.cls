public class myclass2{
    @future
    public static void method2(string kstring){
        //system.debug(kstring);
        
        //List<Account> a1=new List<Account>{(JSON.deserializeUntyped(kstring))};
       // Account a1=(Account)JSON.deserializeUntyped(kstring);
       // Map<string,object>result=(Map<string,object>)JSON.deserializeUntyped(kstring);
       // system.debug(result.values());
      // string no=a1.AccountNumber;
       // system.assertEquals(no,'CD656092');
        //Contact con=new Contact([select LastName,FirstName from Contact where Parent=:a1.id]);
        Type t = Type.forName('List<Account>');
        map<string,List<Account>> a2=(map<string,List<Account>>)JSON.deserialize(kstring,t);
        system.debug(a2.keyset());
        
    }
}


//myclass2 mm=new myclass2();
//myclass2.method2(JSON.serialize(Database.query('SELECT Count(Id),Account.Name FROM Contact WHERE Account.Name != null GROUP BY Account.Name LIMIT 1')));