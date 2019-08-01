trigger attchLimit11 on Attachment (before insert,before update) {
   // list<Account>accs=[select id,(select id,name from  Attachments)from Account where id in:Trigger.new];
   list<Attachment>accs=[SELECT Id, Name,createddate, parent.Id, parent.Name, parent.Type FROM Attachment where id in:Trigger.New];
                     // where parent.type like '%Account%' OR parent.type like '%Contact%' OR 
                      //parent.type like '%Case%' OR parent.type like '%Opportunity%' AND id in:Trigger.New];
    
    set<id> objid= new set<id>();
   
    for(Attachment a:accs){
        objid.add(a.id);
        if (!(objid.contains(a.parentId))){
        if(a.parent.Type=='Account'){
            if(a.CreatedDate==system.today()){
               a.addError('ALready one inserted');
            }
            
            
        }
    }
    }

}