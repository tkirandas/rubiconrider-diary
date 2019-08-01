trigger opptShare on Opportunity (after insert) {
User u=[select id from User where alias='SAMMY'];
    List<OpportunityShare> share=new List<OpportunityShare>();
    for(Opportunity op:Trigger.New){
        if(op.amount>50000){
            OpportunityShare s=new OpportunityShare();
            s.UserorGroupId=u.id;
            s.OpportunityId=op.id;
            s.OpportunityAccessLevel='Edit';
            s.RowCause='Manual';
            share.add(s);
        }
    }
insert share;
}