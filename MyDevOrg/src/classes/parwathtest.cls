public class parwathtest  {
    public string name{set;get;}
    public string phone{set;get;}
    public List<Account> ack {set;get;}
    //ack = new List<Account>();
    public String query;    
    public void show(){
        //Account[] accs=new  Account();
		query = 'select name,phone from Account ';
        //Account[] accs = [select id, phone from Account];
        //system.debug(accs);
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
       // system.debug(query);
        //system.debug(ack);
		ack = Database.query(query);
	
        
        //system.debug(ack);
    }
}