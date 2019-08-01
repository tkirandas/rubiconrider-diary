public class GuvLimit10k {
    public void dmlrows(){
        Account j1=new Account(Name='aqua1');
        insert j1;
        List<Account> accs11=new List<Account>();
        for (integer i=1;i<=5000;i++){
            Account j=new Account(Name='baqub1');
            accs11.add(j);
        }
        system.debug(accs11);
        insert accs11;
        delete accs11;
        undelete accs11;
    }

}