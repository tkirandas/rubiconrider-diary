public class StudentLineItems {
    public StudentWrap[] students {Set;get;}
    public StudentLineItems(){
        StudentWrap w1=new StudentWrap();
        w1.name='kumar';
        w1.age=90;
        StudentWrap w2=new StudentWrap();
        w2.name='Kiran';
        w2.age=80;
        students=new StudentWrap[]{w1,w2};  
    }
}