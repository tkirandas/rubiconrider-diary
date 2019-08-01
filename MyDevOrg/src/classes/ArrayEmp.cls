public class ArrayEmp {
    public string empName;
    public decimal sal;
    public integer exp;
    public ArrayEmp(string empName,decimal sal,Integer exp){
        this.empName=empName;
        this.sal=sal;
        this.exp=exp;
    }

}
















/*Debug

ArrayEmp[] emp=new ArrayEmp[3];
ArrayEmp e1=new ArrayEmp('kiran1',10000,10);
emp[0]=e1;
ArrayEmp e2=new ArrayEmp('kiran2',10000,10);
emp[1]=e2;
ArrayEmp e3=new ArrayEmp('kiran3',10000,10);
emp[2]=e3;
for(ArrayEmp e:emp){
    system.debug(e);
    //system.debug(e.sal);
    //system.debug(e.exp);
}*/