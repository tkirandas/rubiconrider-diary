/*Whenever new oppprtunity is created with type as 'New Customer'& amount>100000 add user
sam as account Team Member
*/
trigger oppTeam1 on Opportunity (after insert) {
    User u=[select id from User where alias='SAMMY'];
	List<OpportunityTeamMember> teams=new List<OpportunityTeamMember>();
    for(Opportunity op:Trigger.New){
        if(op.Type=='New Customer' && op.Amount >100000){
            OpportunityTeamMember opt=new OpportunityTeamMember();
            opt.opportunityId=op.id;
            opt.UserId=u.id;
            opt.TeamMemberRole='Account Manager';
            teams.add(opt);
        }
    }
    insert teams;
}