public class MasthanEmailAsPdf {
    public  List<wrapuser> listusers{set;get;}
    public List<User> selusers{set;get;}
     public List<User> seluser1{set;get;}
    public List<Account>  accs{set;get;}
    map<string[],List<Pagereference>> emf{set;get;}
    public MasthanEmailAsPdf(){ 
        listusers=new List<wrapuser>();
        selusers=new List<User>();  
        emf=new map<string[],List<Pagereference>>();
    }
    public void use(){
        List<User> u1=[select name,email from user];
        For(User u3:u1){
			wrapuser u2=new wrapuser();
			u2.users=u3;
            listusers.add(u2);
        }
    }
    public void add(){
        selusers.clear();
        for(wrapuser oo:listusers){
            if(oo.check1==true){
                selusers.add(oo.users);
            }
        }        
    }
    public PageReference saveToPdf() {
       
        controller2.con2(selusers);
        PageReference p=new PageReference('/apex/MasthanEmailAsPdf2');
       p.setRedirect(false);
        return p;
       
        
  /*   PageReference pdf11 = Page.MasthanEmailAsPdf2;
    // add parent id to the parameters for standardcontroller
     // the contents of the attachment from the pdf
    Blob body;

    try {

      // returns the output of the page as a PDF
      body = pdf11.getContent();

    // need to pass unit test -- current bug  
    } catch (VisualforceException e) {
      body = Blob.valueOf('Some Text');
    }
        

    return pdf11;   */
        
        
    }
     public void MailGenPdf(user uk){
         
         for(User u:selusers){
             if(u.id!=null){
         // accs=[select id,name,industry,ownerid,(select id,lastname from contacts) from account where ownerid=:u.id];
         }
         }
     }
    public class wrapuser{
        public User users{set;get;}
        public Boolean check1{set;get;}   
        public wrapuser(){
            users=new User();
        }
    }
}