public class SchemaFinalExample {
    public String query								{set;get;}
    public List<SoqlWrapper>  filterList			{set;get;}
    public List<SelectOption> objects 				{set;get;}
    public List<SelectOption> selectedOptions 		{set;get;}
    public List<SelectOption> notSelectedOptions 	{set;get;}
    public Set<String> selected 					{Set;get;}
    public Set<string> notSelected   				{set;get;}
    public List<string> added		 				{Set;get;}
    public List<String> removed 	 				{set;get;}
    public List<String> fields						{Set;get;}
    public String objSelected						{set;get;}
    public Map<String,Schema.sobjectType> objMap 	{set;get;}
    public Map<String,Schema.SObjectField> fldMap 	{set;get;}
    public SchemaFinalExample(){
        objects=new List<SelectOption>();
        notSelectedOptions=new List<selectOption>();
        selectedOptions=new List<selectOption>();
        selected=new Set<String>();
        notSelected=new Set<string>();
        added=new List<string>();
        removed=new List<String>();
        fields=new List<String>();
        objMap=Schema.getGlobalDescribe();
        Set<String> keys=objMap.keySet();
        List<String> objList=new List<String>(keys);
        objList.sort();
        SelectOption n=new SelectOption('none','-None-');
        objects.add(n);
        selectedOptions.add(n);
        notSelectedOptions.add(n);
        for(String s:objList){
            Schema.DescribeSobjectResult rs=objMap.get(s).getDescribe();
            if(rs.isAccessible()){
            	SelectOption op=new SelectOption(s,s);
            	objects.add(op);
            }
        }  
    }
    public void getFieldOptions(){
        if(objSelected!='none' && objSelected!=null){
        	Schema.DescribeSobjectResult result=objMap.get(objSelected).getDescribe();
        	fldMap=result.fields.getMap();
        	set<String> keys=fldMap.keySet();
            fields.addAll(keys);
            fields.sort();
            notSelected.addAll(fields);
        }
        getMultiSelect();
    }
    public void getMultiSelect(){
        notSelectedOptions.clear();
        selectedOptions.clear();
        List<String> sfields=new List<String>(selected);
        sfields.sort();
        List<string> nsfields=new List<String>(notSelected);
        nsfields.sort();
         SelectOption n=new SelectOption('none','-None-');
        if(notSelected.size()>0){
            for(String s1:nsfields){
                SelectOption op1=new SelectOption(s1,s1);
                notSelectedOptions.add(op1);
            }
        }else{
            notSelectedOptions.add(n);
        }
        if(Selected.size()>0){
            for(String s2:sfields){
                SelectOption op2=new SelectOption(s2,s2);
                SelectedOptions.add(op2);
            }
        }else{
            SelectedOptions.add(n);
        }
    }
    public void addEle(){
        notSelected.removeAll(added);
        selected.addAll(added);
        getMultiSelect();
    }
     public void removeEle(){
        selected.removeAll(removed);
        notselected.addAll(removed);
        getMultiSelect();
    }
    public void writeFilters(){
        filterList=new List<SoqlWrapper>();
        addFilter();
    }
    public void addFilter(){
        SoqlWrapper sw=new SoqlWrapper(fields);
        filterList.add(sw);
    }
    public void formQuery(){
        String s;
        if(filterList.size()>0){
           
            }
        }
    }