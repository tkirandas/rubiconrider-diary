public class ClassArrayEx {
    public string name;
    public string branch;
    public integer phone;

    public ClassArrayEx(string name, string branch,integer phone){
        this.name=name;
        this.branch=branch;
        this.phone=phone;
    }
    }
/*Debug
 ClassArrayEx[] emp=new ClassArrayEx[3];
ClassArrayEx e1=new ClassArrayEx('kiran1','Ameerpet',123);
emp[0]=e1;
ClassArrayEx e2=new ClassArrayEx('kiran2','SRNagar',456);
emp[1]=e2;
ClassArrayEx e3=new ClassArrayEx('kiran3','koti',786);
emp[2]=e3;
for(ClassArrayEx e:emp)
    system.debug(e);
    //system.debug(e.sal);
    //system.debug(e.exp);
}*/