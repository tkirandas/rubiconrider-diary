public class Anilsoql1 {
    public List<Account>accs{set;get;}
    public  list<SelectOption> fields {set;get;}
    public list<SelectOption> operators{set;get;}
    public string fldSelected {set;get;}
    public string opSelected {set;get;}
    public string value {set;get;}
    public List<string>fldList {set;get;}
    public List<string>opList {set;get;}
    public string query{set;get;}
    public Anilsoql1(){
        fldList=new List<string>{'Name','Industry','Phone'};
        opList=new List<string>{'=','!=','<','>'};
        fields=new List<SelectOption>();
        operators=new List<SelectOption>();
        getOptions();        
    }
    public void getOptions(){
        fields.clear();
        operators.clear();
        SelectOption op=new SelectOption('none','-none-');
        fields .add(op);
        operators.add(op);
        for(string s1:fldList){
            SelectOption op1=new Selectoption(s1,s1);
            fields.add(op1);
        }
        for(string s2:opList){
            SelectOption op2=new SelectOption(s2,s2);
            operators.add(op2);
        }
    }
        public void runQuery(){
            string query='select id,name,industry,phone from Account';
            if(fldSelected!='none'&& opSelected!='none'){
                query=query+' where fldSelected++opSelected++value+';
               // string query1=query.replace('=','!=');
                accs=Database.query(query);
            }
        
    }
}