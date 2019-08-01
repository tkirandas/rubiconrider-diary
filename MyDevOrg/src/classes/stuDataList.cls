public class stuDataList {
    public List<string>accs{set;get;}
    public List<studentData>studs{set;get;}
    public List<Account>accList{set;get;}
  
    
    public void getNames(){
        accs=new List<string>();
        accs.add('sam');
        accs.add('Paul');
        accs.add('Kiran');
    }
    
    public void getStudents(){
        studs=new List<studentData>();
        studentData s1=new studentData('sam',20);
        studentData s2=new studentData('Ram',30);
        studs.add(s1);
        studs.add(s2);
    }
    public void getAccount(){
  accList=new List<Account>();
        Account a1=new Account(Name='wipro',Industry='banking');
        Account a2=new Account(Name='Dell',Industry='Energy');
        accList.add(a1);
        accList.add(a2);
        
    }
}