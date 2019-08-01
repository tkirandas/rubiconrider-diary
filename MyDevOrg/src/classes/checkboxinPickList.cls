public class checkboxinPickList{
 
public list<string> checkboxSelections {get;set;}  //holds the values of the selected checkboxes

public list<selectOption> getMyCheckboxes(){
    //create list of checkboxes
    list<selectOption> myOptions = new list<selectOption>();
    for(integer i=0;i<5;i++)
        myOptions.add(new selectOption(string.valueof(i),string.valueof(i)));  // selectOption = (value,label)
    return myOptions;
}
                      }