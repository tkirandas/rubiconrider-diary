trigger attachLimit on Attachment (before insert) {   
    set<id> objids= new set<id>();
    for(Attachment a:Trigger.new){
        objids.add(a.ParentId);
        
    }   
     list<Attachment> accs=[SELECT name,ParentId FROM Attachment where parentId in:objids];
     if(accs.size()>0)
         
        Trigger.New[0].addError('Already  record inserted');
}




/* old 
 trigger attachLimit on Attachment (before insert) {     
    set<id> objid= new set<id>();
    For(Attachment a:Trigger.new){
       if (!(objid.contains(a.parentId)))
       // if( (objid.isEmpty())){
            if(a.parentId!= null || a.parentId!=''){
                objid.add(a.ParentId);
                a.addError('ALready one inserted');
            }
            
        }
    }*/