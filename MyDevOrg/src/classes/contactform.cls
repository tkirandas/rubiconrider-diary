public class contactform {
    public string kid{set;get;}
    public string firstname {set;get;}
    public string lastname {set;get;}
    public string email1 {set;get;}
    public list<string> names {set;get;}
    public list<contact> accs1{set;get;}
       public list<contact> accs2{set;get;}
    list<Recordtype> record{set;get;}
    public string selectedRecordTypes{set;get;}
    //public  RecordType selectedRecordTypes{set;get;}
   public List<selectOption> options1 {set;get;}
    
       public  contactform(){
          // selectedRecordTypes=new RecordType();
            accs1=new List<contact>();
         accs2=new List<contact>();
       names=new list<string>();
    }
  public List<selectOption> getRecordTypes() {
    
        List<selectOption> options1 = new List<selectOption>();
options1.add(new selectOption('', '- None -')); 
   list<Recordtype> record = [SELECT Id,Name,SobjectType FROM RecordType WHERE SobjectType = 'Contact'];
    for(Recordtype r : record){
     options1.add(new selectOption( r.Name,r.Name)); 
           }    
 return options1;
}
       
    public void submit1(){
     
        contact c1=new Contact();
        c1.lastname=lastname;
        c1.FirstName=firstname;
        c1.Email=email1;
        c1.new_Record_type__c=selectedRecordTypes;
         insert c1;
        
         names.add(lastname);
         //accs1.add(c1);
       accs1=[select id,firstname,lastname,email,new_Record_type__c,OwnerId,RecordType.Name from contact where lastname In:names];
        //insert accs1;
   //accs1.add(c1);
        // c1=null;      
    }
    public void show(){
        // list<contact> accs2=new List<contact>();
      // accs2=[select id,firstname,lastname,new_Record_type__c,Email,OwnerId from Contact where lastname=:lastname];
 
        
    }
}