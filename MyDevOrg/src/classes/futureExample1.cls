public class futureExample1 {
  //@future
    public  static void futurecall(){
        profile p=[select id from profile where name='System Administrator'];
        UserRole r=[select id from UserRole where Name='CEO'];
User u=new User();
        u.alias='usha';
            u.email='tkirandas@gmail.com';
            u.LastName='great';
            u.profileId=p.Id;
            u.userroleId=r.ID;
           // u.TimeZoneSidKey='(GMT-08:00)PacificStandardTime(America/Los_Angeles)';
            u.username='ushathegreat56@salesforce.com';
        u.TimeZoneSidKey='America/Los_Angeles';
        u.LanguageLocaleKey='en_US';
        u.LocaleSidKey='en_US';
            u.EmailEncodingKey='UTF-8';
              insert u;
    //Account a=new Account(name='acme');
//insert a;
    }

}
/*
 future1Example fe=new future1Example();
fe.show();



futureExample1.futurecall();
Account a=new Account(name='acme');
insert a;
*/