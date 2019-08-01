public with sharing class JSONExamples{
/*
   public static void ListExample(){
List<Integer> numberList=new List<Integer>{1,2,3,4,5,6};
string jsonList=JSON.serializepretty(numberList);
System.debug('\n\nJSON Version is:\n'+jsonList+'\n');
List<Integer> deserializedList=(List<Integer>)JSON.deserialize(jsonList,List<Integer>.class);
system.debug('\n\n Values are equal ?\n'+(numberList==deserializedList)+'\n');
    system.debug(deserializedList);
} */
    public static void ListExample(){
List<string> numberList=new List<string>{'a','b','c','d','e','f'};
string jsonList=JSON.serializepretty(numberList);
System.debug('\n\nJSON Version is:\n'+jsonList+'\n');
List<string> deserializedList=(List<string>)JSON.deserialize(jsonList,List<string>.class);
system.debug('\n\n Values are equal ?\n'+(numberList==deserializedList)+'\n');
    system.debug(deserializedList);
}
}