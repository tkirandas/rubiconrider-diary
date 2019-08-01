public class importDataFromCSVController {
public Blob csvFileBody{get;set;}
public string csvAsString{get;set;}
public String[] csvFileLines{get;set;}
    public integer j{set;get;}
public List<Black_List__c> acclist{get;set;}
  public importDataFromCSVController(){
    csvFileLines = new String[]{};
    acclist = New List<Black_List__c>(); 
  }
  
  public void importCSVFile(){
       try{
           csvAsString = csvFileBody.toString();
           csvFileLines = csvAsString.split('\n'); 
            integer k=csvFileLines.size();
        //   k=k-j;
           //for(Integer i=1;i<k;i++){
                for(Integer i=1;i<csvFileLines.size();i++){
               Black_List__c accObj = new Black_List__c() ;
               string[] csvRecordData = csvFileLines[i].split(',');
               accObj.name = csvRecordData[0] ;             
               //accObj.accountnumber = csvRecordData[1];
              // accObj.Type = csvRecordData[2];
              // accObj.AccountSource = csvRecordData[3];   
               //accObj.Industry = csvRecordData[4];                                                                             
               acclist.add(accObj);   
           }
        insert acclist;
        }
        catch (Exception e)
        {
            ApexPages.Message errorMessage = new ApexPages.Message(ApexPages.severity.ERROR,'An error has occured while importin data Please make sure input csv file is correct');
            ApexPages.addMessage(errorMessage);
        }  
  }
}