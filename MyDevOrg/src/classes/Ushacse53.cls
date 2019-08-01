public class Ushacse53 {
    public String acctName {get;set;}
    public List<SelectOption> listAcctOptions {get;set;}   
    public List<Opportunity> listOpptys {get;set;}
    public list<account> accs{set;get;}
    public String acctId {get;set;}
    public String selectedAcctId {get;set;}
    public String sop{get;set;}
    public Boolean flag1{get;set;}
       public void Ushacse53() {
        flag1=false;
        listAcctOptions = new List<SelectOption>();       
        listOpptys = new List<Opportunity>();
        accs=new list<Account>();
    }
    
    public void searchAcct() {
        
        String soql = 'SELECT Id, Name FROM Account WHERE Name LIKE \'' + acctName + '%\' ';
        List<Account> listAcct = Database.query(soql);        
        if(listAcct.size() > 0) {
            listAcctOptions = new List<SelectOption>();
            listAcctOptions.add(new SelectOption('none', '-----------None-----------'));
            for(Account a : listAcct) {
                listAcctOptions.add(new SelectOption(a.Id, a.Name));
            }
        }
        
    }
    
    public void fetchRecords() {
       
        if(selectedAcctId != '') {
           
           accs=[select id,name,(select id,name from opportunities where name like:'%'+sop+'%')from Account where name like:'%'+selectedAcctId+'%'];
                   } else {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Select an Account to fetch their records'));
        }
    }
}