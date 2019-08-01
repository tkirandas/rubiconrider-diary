public class MyButton {
    public Account acc{set;get;}
    public MyButton(Apexpages.StandardController controller){
        string[] fields=new string[]{'Name','Industry'};
        controller.addFields(fields);
        acc=(Account)controller.getRecord();
    }
    

}