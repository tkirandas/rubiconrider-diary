public class RecordsOfUser {
    
    public RecordsOfUser(ApexPages.StandardController Controller) {
    }   
    public Opportunity[]getRecordDetail(){
        Opportunity[]recordList;
        recordList = [SELECT Opportunity.Name,
                            // Opportunity.Owner,
                             Opportunity.Amount,
                             Opportunity.CloseDate
                        FROM Opportunity
                       WHERE OwnerId= :UserInfo.getUserID()];
        return recordList;
    }
}