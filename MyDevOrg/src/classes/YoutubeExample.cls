public class YoutubeExample {
    public String result 	{set;get;}
    public String apiKey 	{set;get;}
    public String searchText{set;get;}
    public List<String> videoNames {set;get;}
    public void connectYoutube(){
        videoNames=new List<String>();
        Http p=new Http();
        HttpRequest request=new HttpRequest();
 	    String url='https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=5&q='+searchText+'&key='+apiKey;
    	request.setMethod('GET');
        request.setEndpoint(url);
        request.setHeader('Content-type', 'application/json');
        HttpResponse response=p.send(request);
        
        result=response.getBody();
        System.JSONParser js=JSON.createParser(result);
        while(js.nextToken()!=null){
            if(js.getText()=='title'){
                js.nextToken();
                videoNames.add(js.getText());
            }
        }     
    }  
}