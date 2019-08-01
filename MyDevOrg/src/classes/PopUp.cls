public class PopUp {
    public list<Account> list1{set;get;}
    public list<Account> list2{set;get;}
    public set<Account> accs2{set;get;}
    public String name{set;get;}
    public String s{set;get;}
    public list<Account> accs {set;get;}
    public String query{set;get;}
    public void search(){
        accs2=new set<Account>();
        query='select id,name from Account';
        if(s!=null && s!=''){
string query1=query+' WHERE Name LIKE \''+s+'%\'' ;            
        
        system.debug(query);
        list1=Database.query(query1);
        //if(s!=null && s!=''){
string query2=query;//+' WHERE Name NOT LIKE \''+s+'%\'' ;            
        
      list2=Database.query(query2);
       // system.debug(list1);
         //system.debug(list2);
        
    }
        accs=list1;
       accs2.addAll(list2);
        accs2.removeALL(list1);
        accs.addAll(accs2);
      //  system.debug(accs);
         system.debug(accs);
        
    }
}