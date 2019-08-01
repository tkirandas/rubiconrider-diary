public class numcontacts {
    public list<account> accs{set;get;}
    public numcontacts(){
        accs=[select name,(select id from contacts) from Account];
        
    }

}