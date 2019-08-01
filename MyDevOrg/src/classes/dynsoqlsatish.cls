public class dynsoqlsatish {

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