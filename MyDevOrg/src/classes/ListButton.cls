public class ListButton {
    public list<Account> accs{set;get;}
    public ListButton(Apexpages.StandardSetController controller){
        string[]fields=new string[]{'Name','Industry'};
            controller.addFields(fields);
        accs=(List<Account>)controller.getSelected();
    }

}