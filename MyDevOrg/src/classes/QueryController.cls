public class QueryController {
	public string selectedSobject{get;set;}
	public List<Sobject> lstQuery{get;set;}
	public List <SelectOption> objectNames {get; set;}
    public QueryController(){
        lstQuery=new List<Sobject>();
        objectNames = initObjNames();
    }
    
    public Void doSearch(){
        string Query='';
        Query='SELECT id,Name FROM '+ selectedSobject;
        lstQuery=Database.query(Query);
    }
     public  List<SelectOption> initObjNames() {
        List<SelectOption> objNames = new List<SelectOption>();
        List<Schema.SobjectType> obj = Schema.getGlobalDescribe().Values();
        for(Schema.SobjectType ss:obj) {
            objNames.add(new SelectOption(ss.getDescribe().getName(), ss.getDescribe().getName()));
            objNames.sort();
        }
        return objNames;
    }
}