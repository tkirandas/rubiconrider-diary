public class sampleCustomSetting
{
    public List<Zipcode__c> code {get;set;}
   
    public sampleCustomSetting()
    {
        Map<String,Zipcode__c> allCodes=Zipcode__c.getAll();
        code = allCodes.values();
    }  
   
}