public with sharing class testopenweather2
{
public string city {get;set;}
public string temp {get;set;}
public string pressure {get;set;}
public string humidity {get;set;}
public string temp_min {get;set;}
public string temp_max {get;set;}

public testopenweather2(ApexPages.StandardController stdController)
{
Account account=(Account)stdController.getRecord();
account=[SELECT Id,ShippingCity From Account WHERE Id=: account.Id];

string accountCity=account.ShippingCity;
String apiKey='6727e584e2409ee9f6c784afb7ec37b0';

String requestEndpoint='http://api.openweathermap.org/data/2.5/weather';
requestEndpoint += '?q=' + accountCity;
requestEndpoint += '&units=metric';
requestEndpoint += '&APPID='+apiKey;

Http http = new Http();

HttpRequest request = new HttpRequest();
request.setEndpoint(requestEndpoint);
request.setMethod('GET');

HttpResponse response=http.send(request);

if(response.getStatusCode()==200)
{
Map<String,Object> results=(Map<String,Object>)JSON.deserializeUntyped(response.getBody());
city=String.valueOf(results.get('name'));
Map<String,Object> mainresults=(Map<String,Object>)(results.get('main'));
temp=String.valueOf(mainresults.get('temp'));
pressure=String.valueOf(mainresults.get('pressure'));
humidity=String.valueOf(mainresults.get('humidity'));
temp_min=String.valueOf(mainresults.get('temp_min'));
temp_max=String.valueOf(mainresults.get('temp_max'));
}
else
{
ApexPages.Message myMsg=new ApexPages.Message(ApexPages.Severity.Error,'There was an error in reading Data');
ApexPages.addMessage(myMsg);
}
}

}