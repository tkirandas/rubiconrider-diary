public class Bank {
public String name;
    public Integer actNo;
    public Decimal bal;
    public Bank(Integer actNo, Decimal bal){
        name='ICICI';
        this.actNo=actNo;
        this.bal=bal;
           }
    public void show()
    {
        System.debug('Bank name is: '+name+'Account No is: '+actNo+'Balance is :'+bal);
    }
}