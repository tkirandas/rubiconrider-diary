public class example3 {
    public integer a;
    public integer b;
	public integer c;
    public example3(integer a){
        this.a=a;
        
    }
    public void add(integer x){
        b=x;
        c=b+a;
        system.debug('Sum of a,b,&c is :'+c);
        
    }
    public void display(){
        system.debug(a);
        system.debug(b);
        system.debug(c);
        
    }
}