public class apex10PickList {
    public string selected{set;get;}
    public string result{set;get;}
    public void show(){
        result='You have selected:  '+selected;
    }

}