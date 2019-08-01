public class controller2 {
    public static list<user>lu{set;get;}
    public static list<account> bccs{set;get;}
    public static map<string,list<account>>bmap{set;get;}
    
    public static void con2(list<user>lk){
        lu=new list<user>();
        lu.addAll(lk);
        //for(user q:lu){
            bccs=[select id,name,(select id,lastname from contacts) from account where ownerid in:lu];
          // bmap.put(q.email,bccs);
        //bccs=[select id,name,(select id,lastname from contacts) from account where ownerid=:q.id];
        //}
    }
    public  controller2(){
      //  bccs=new list<account>bccs();
    }
    public static void con3(user j){
        lu.add(j);
        
    }
   public static PageReference saveToPdf(user a) {
       
       bccs=[select id,name,(select id,lastname from contacts) from account where ownerid=:a.id];
       // controller2.con2(selusers);
        PageReference p=new PageReference('/apex/MasthanEmailAsPdf2');
       p.setRedirect(false);
        return p;
   }

}