public class ActionPoller1 {
    public string result {set;get;}
    public integer count {set;get;}
    public ActionPoller1(){
        result='Time:'+system.now();
        count=1;
    }
    public void callme(){
        count=count+1;
        result='Time:'+system.now();
    }

}