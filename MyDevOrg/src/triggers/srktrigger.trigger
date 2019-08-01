trigger srktrigger on User (before update) {
    if (Trigger.isUpdate){
        List<User> u = [select Name,Id,firstname,isActive from user where Id in :Trigger.new];
      
        for(User a:u){
            if(!(a.IsActive)){
         list<opportunity> recordList=new list<opportunity>();
          recordList = [SELECT Opportunity.Name,Opportunity.Amount,Opportunity.CloseDate FROM 
                        Opportunity WHERE OwnerId= :a.Id];
                list<AggregateResult> recordList1=new list<AggregateResult>();
                recordList1=[select sum(Opportunity.Amount),max(Opportunity.Amount) FROM Opportunity ];
                for(AggregateResult ok:recordList1){
                    
                }
                
            for(Opportunity op:recordList){
                op.OwnerId=UserInfo.getUserID();
            }
            
        }  
            }
    
    }

}