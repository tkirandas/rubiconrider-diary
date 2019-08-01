global class b1 implements Database.Batchable<sObject>{

global final string query;
global final string s_object;
global final string field;
global final string field_value;

global b1(string q,string s,string f,string v){
query=q;
s_object=s;
field=f;
field_value=v;
}


global Database.QueryLocator start(Database.BatchableContext BC){
return Database.getQueryLocator(query);
}

global void execute(Database.BatchableContext BC,List<sObject> batch){
for(sObject o:batch){
o.put(field,field_value);
}
update batch;
}

global void finish(Database.BatchableContext BC){
}
}