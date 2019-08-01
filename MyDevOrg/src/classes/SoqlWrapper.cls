public class SoqlWrapper {
    public List<SelectOption> fieldsList 	{set;get;}
    public List<SelectOption>  operatorList	{set;get;}
    public String selected					{set;get;}
    public String operator					{Set;get;}
    public String value						{Set;get;}
    public SoqlWrapper(List<String> fldNames){
        fieldsList=new List<SelectOption>();
        operatorList=new List<SelectOption>();
        SelectOption n=new SelectOption('none','-None-');
        fieldsList.add(n);
        operatorList.add(n);
        for(string s:fldNames){
            SelectOption op1=new SelectOption(s,s);
            fieldsList.add(op1);
        }
        SelectOption op2=new SelectOption('=','Equals');
        SelectOption op3=new SelectOption('!=','Not Equals');
        operatorList.add(op2);
        operatorList.add(op3);
    }

}