public class UserEntry {
   public User k{set;get;}
    public string selected{set;get;}
   public List<Lead> totalead{set;get;}
    public List<SelectOption> options{set;get;}
    public UserEntry() {
    }
     public void getUserItems() {
      options = new List<SelectOption>();
options.add(new SelectOption('-None-','None'));
        for (User U: [SELECT name,id FROM User]) {

            options.add(new SelectOption(U.name,U.name));
        }
        //return options;
    }
    public void UserLeadData(){
      // totalead= new List<Lead>();
      k.id=UserInfo.getUserId();
            totalead=[select name,phone,status from Lead where OwnerId=:k.id] ;
        system.debug(totalead);
    }

}