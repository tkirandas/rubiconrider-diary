public class GuvDML150Er {
    public void dmlbulk(){
        Account a11=new Account(Name='Charlie1');
        insert a11;
        contact c11=new contact(LastName='Punk1');
        insert c11;
        delete a11;
        delete c11;
        
        for(integer i=1;i<=150;i++){
            Account a111=new Account(Name='testing');
          insert a111;
        }
    }

}



/*public class GuvDML150Er {
   //will not throw error cos we use list
    public void dmlbulk(){
        Account a1=new Account(Name='Charlie');
        insert a1;
        contact c1=new contact(LastName='Punk');
        insert c1;
        delete a1;
        delete c1;
        List<Account>accs=new List<Account>();
        for(integer i=1;i<=150;i++){
            Account a=new Account(Name='testing');
            accs.add(a);
        }
        insert accs;
         //system.debug(accs);   
            }

}*/