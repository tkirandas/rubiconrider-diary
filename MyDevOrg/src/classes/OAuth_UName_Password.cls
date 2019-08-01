/*
 * EndPoint	:https://login.salesforce.com/services/oauth2/token
 * Method	:POST
 * Params	:grant_type=password
 * 			:client_id
 * 			:client_secret
 * 			:username
 * 			:password
 
*/

public class OAuth_UName_Password {
    
    public string clientId		{set;get;}
    public string clientSecret	{set;get;}
    public string username		{set;get;}
    public string password		{set;get;}
    public string accessToken	{set;get;}
    public string result		{set;get;}
    public string endPoint		{set;get;}
    public OAuth_UserName_Wrapper OAuth_result{set;get;}
    public String access_token_final{set;get;}
    public OAuth_UName_Password()
    {
        endPoint='https://login.salesforce.com/services/oauth2/token';
    }
    
    public void send()
    {
        Http p= new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endPoint);
        request.setMethod('POST');
        String body ='grant_type=password';
        body = body+'&client_id='+clientId;
        body = body+'&client_secret='+clientSecret;
        body = body+'&username='+username;
        body = body+'&password='+password;
        request.setBody(body);
        HttpResponse response = p.send(request);
        result = response.getBody();
       access_token_final=envelope(result);
        //access_token_final=OAuth_result.access_token;
            
       }
    
    public String envelope(String result)
    {
        
        OAuth_UserName_Wrapper Finalresult=(OAuth_UserName_Wrapper)JSON.deserialize(result, OAuth_UserName_Wrapper.class);
       system.debug('@TESTING'+Finalresult);
        return Finalresult.access_token; 
    }

}