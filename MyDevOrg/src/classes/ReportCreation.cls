public class ReportCreation {
    public List<Account> acc{set;get;}    
     public String fromDate{set;get;}
    public string toDate{set;get;}
    public ReportCreation(){
               
    }
    public void report(){    
        
        String query='select name,id,industry from Account';
        if(fromDate!=null&&fromDate!='')
            query+=' where createdDate >'+fromdate+'T00:00:00.000Z';
        if(todate!=null&&toDate!='' )
            query=query+' and createdDate < '+todate+'T00:00:00.000Z';
        acc=database.query(query);
    }
    

}