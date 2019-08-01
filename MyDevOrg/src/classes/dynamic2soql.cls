/*Other code
public class dynamic2Soql {
    public String name {set;get;}
    public String industry {set;get;}
    public List<Account> accs {set;get;}
    public String query {set;get;}
    public void search(){
       query='select id ,name,industry from Account ';
        if( (name!= null && name!='') && (industry!=null && industry!='')){
           query=query+' where name=\''+name+'\' and industry=\''+industry+'\'';  
        }else{
            if(name!=null && name!=''){
                query=query+' where name=\''+name+'\'';
            }else{
                if(industry!=null &&  industry!=''){
                    query=query+' where industry=\''+industry+'\'';
                }
            }
        }
        accs=Database.query(query);
    }
}


*/
/* my code*/
public class dynamic2soql {
    
    public string name{set;get;}
    public string phone{set;get;}
    public List<Account> ack {set;get;}
        public String query{set;get;}    
   
    public void show(){
        //Account[] accs=new  Account[];
        query='select id,name,phone from Account';
        if((name!=null && name!=' ')&&(phone!=null && phone!=' ')){
            query=query+' where name=\''+name+'\' and phone=\''+phone+'\'';
                }else{
                    if(name!=null && name!=''){
                        query=query+' where name=\''+name+'\'';
                    }else{
                        if(phone!=null && phone!=''){
                            query=query+' where phone=\''+phone+'\'';
                        }
                    }
                   }
         ack=Database.query(query);                         

        
           }
    

}



/*parwath's code


public class Dynamic2soql {
    public string name{set;get;}
    public string phone{set;get;}
    public List<Account> ack {set;get;}
    //ack = new List<Account>();
    public String query = 'select name,phone from Account ';    
    public void show(){
        //Account[] accs=new  Account();

        Account[] accs = [select id, phone from Account];
        system.debug(accs);
        if((name!=null && name!='')&&(phone!=null && phone!='')){
            query=query+'where name=\''+name+'\' and phone=\''+phone+'\'';
          }else{
              if(name!=null && name!=''){
                 query=query+'where name=\''+name+'\'';
              }else{
                  if(phone!=null && phone!=''){
                      query=query+'where phone=\''+phone+'\'';
                  }
              }
           }
        system.debug(query);
        system.debug(ack);
		ack = Database.query(query);

        system.debug(ack);
    }
}
*/