public class GoverningExample {
    public void soqlcall(){
        Account acc=[select id from Account Limit 1];
        List<Contact>cons=[select id from Contact];
        List<Lead>leads=[select id from Lead];
        for(integer i=1;i<=100;i++){
            List<Account>accs=[select id from Account];
        }
    }

}



/*
throws 101 DML error
GoverningExample gg=new GoverningExample();
gg.soqlcall();
*/