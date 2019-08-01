@isTest
public class AccInsert {
@isTest
    static void testme(){
        Account a1=new Account(Name='aaa',Industry='Banking',Type='Prospect');
    Account a2=new Account(Name='aaa',Industry='Energy',Type='Prospect');
        try{
            insert a1;
            insert a2;
        }catch(Exception e){
            System.debug(e);
        }
        Account a3=[select id,type from Account where id=:a1.id];
        Account a4=[select id,type from Account where id=:a2.id];
    system.assertEquals(a3.Type, 'Other');
        system.assertEquals(a4.Type, a2.Type);
    }
}