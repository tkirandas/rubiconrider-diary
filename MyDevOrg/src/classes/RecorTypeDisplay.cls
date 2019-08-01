public class RecorTypeDisplay {
public String SelectedRecordType {get ;set;}
    List<selectOption> rTypes {set;get;}
public List<selectOption> getRecordTypes(){
     
    
    for (RecordType  a :[Select Id, Name,DeveloperName FROM RecordType where SobjectType = 'Account']) 
            {
                rTypes.add(new selectOption(a.Id, a.DeveloperName ));
            }
    return rTypes; 
}
}