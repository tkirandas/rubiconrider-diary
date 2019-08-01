public class apex12dataTransfer {
    public string name{set;get;}
    public integer age{set;get;}
    public string city{set;get;}
    public string gender{set;get;}
    
    public pageReference nextpage(){
        pageReference p=new pageReference('/apex/apex6Example');
        return p;
    }

}