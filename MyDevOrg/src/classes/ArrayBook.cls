public class ArrayBook {
    public string authName;
    public string bookName;
    public ArrayBook(string authName,string bookName){
        this.authName=authName;
        this.bookName=bookName;
    }

}













/*ArrayBook[] Boo=new ArrayBook[2];
ArrayBook b1=new ArrayBook('2states','chetan');
Boo[0]=b1;
ArrayBook b2=new ArrayBook('3states','Bhagat');
Boo[1]=b2;
for(ArrayBook b:Boo){
    system.debug(b);
}*/

/* with other type of for loop
ArrayBook[] Boo=new ArrayBook[2];
ArrayBook b1=new ArrayBook('2states','chetan');
Boo[0]=b1;
ArrayBook b2=new ArrayBook('3states','Bhagat');
Boo[1]=b2;
integer i;
string[] aNames=new string[Boo.size()];
for(i=0;i<Boo.size();i++){
    aNames[i]=Boo[i].authName;
    //i=i+1;
    system.debug(aNames);
}*/