public class ClassOne {
    public string name{set;get;}
    public ClassOne(Apexpages.StandardController controller){
        //name='This is class one';
    }

    public void show(){
        name='This is a call from class one';
    }
}