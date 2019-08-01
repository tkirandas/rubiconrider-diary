public class JSONExample2 {

    public String result1 {set;get;}
    public String result2 {Set;get;}
    public String result3 {set;get;}
    public JSONExample2(){
        Account a1=new Account(Name='TCS',Phone='123');
        //result1=JSON.serialize(a1);
        Student4JSON s1=new Student4JSON('Hari',80);
        Student4JSON s2=new Student4JSON('Ravi',90);
        List<Student4JSON > stds=new List<Student4JSON>{s1,s2};
        result2=JSON.serialize(stds);
        Decimal amt=1000;
        result3=JSON.serialize(amt);
    }
}