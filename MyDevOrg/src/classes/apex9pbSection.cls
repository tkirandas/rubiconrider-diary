public class apex9pbSection {
    public string name{set;get;}
    public integer age{set;get;}
    public string result{set;get;}
    
    public void getData(){
        result='Your Name:'+name+'and age:'+age;
    }

}