public class AccountTeamTrigger {
    public static void addMember(List<Account>accs){
        user u=[select id from user where alias='SAMMY'];
        List<AccountTeamMember>teams=new List<AccountTeamMember>();
        for(Account a:accs){
            if(a.industry=='Banking'){
                AccountTeamMember atm=new AccountTeamMember();
                atm.AccountId=a.id;
                atm.userId=u.id;
                atm.TeamMemberRole='Account Manager';
                teams.add(atm);
            }
        }
    insert teams;
    }
    

}