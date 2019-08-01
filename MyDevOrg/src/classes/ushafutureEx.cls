public class ushafutureEx {

    public static void callme(){        
       /* Group queue = new Group(Name='public Queue', Type='Queue',DoesSendEmailToMembers=true);
        insert queue;
        Account a=new Account(name='public Queue');
        insert a;*/
        Group g=new Group(Name='kiran', Type='queue');
        insert g;
//QueuesObject q= new QueuesObject (queueid=g.id, sobjectType='Account');
 //      insert q; 
              
    }
}