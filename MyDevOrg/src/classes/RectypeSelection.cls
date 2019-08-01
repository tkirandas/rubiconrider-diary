public class RectypeSelection {
public String SRecType {set;get;}
public List<selectOption> getRecordTypes()
{
    List<selectOption> rTypes = new List<selectOption>();    
    for (RecordType a:[Select Id, Name,DeveloperName FROM RecordType where SobjectType='Application__c']) 
            {
                rTypes.add(new selectOption(a.Id, a.DeveloperName ));
            }
    return rTypes; 
}
}