public class Schema2 {
    public List<SelectOption> options {set;get;}
    public Schema2(){
        Schema.DescribeSObjectResult result=User.SobjectType.getDescribe();
        Map<String,Schema.SobjectField> fldMap=result.fields.getMap();
        Set<String> keys=fldMap.keySet();
        options=new List<SelectOption>();
        for(String s:keys){
            SelectOption op=new SelectOption(s,s);
            options.add(op);
        }
    }

}