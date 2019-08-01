public class ClassTwo {
    public string result{set;get;}
    public string name{set;get;}
    public ClassTwo(Apexpages.StandardController controller){
        //name='This is class Two';
    }
    public void show(){
        name='this is a call from class two';
    }
    public void call(){
        result='This is call method';
    }
}