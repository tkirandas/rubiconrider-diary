trigger ContactUpdate on Account (after update){
    List<Id>accIds=new List<Id>();
   // Id aid=New Id();
    List<Contact>cons=new List<Contact>();
   Map<Id,Account>oldMap=Trigger.OldMap;
   Map<Id,Account>newMap=Trigger.NewMap;
    for(Id aid:oldMap.keySet()){
        if(oldMap.get(aid).Phone!=newMap.get(aid).Phone){
            accIds.add(aid);
        }
    }
List<Account> accList=[select phone,(select OtherPhone from contacts)from Account where id in:accIds];
    for(Account a:accList){
        for(contact c:a.contacts){
            c.OtherPhone=a.phone;
        cons.add(c);
        }
    }
   update cons; 
}