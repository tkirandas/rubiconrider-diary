public class SearchExample {
    public List<Account> accs {set;get;}
    Public String selected  {set;get;}
    Public String result  {set;get;}
    public Boolean flag {set;get;}
     public Boolean flag2 {set;get;}
         public Boolean flag1 {set;get;}
    public Opportunity opps{set;get;}
    public SearchExample(ApexPages.StandardController controller){
     
    }
    public void show(){
        result='this is test';
        flag2=true;
        if(selected=='New'){
            flag=true;
             flag1=false;
        }else{ 
            if(selected=='Existing'){
                flag=false;
                 flag1=true;
            }
        }
    }

}