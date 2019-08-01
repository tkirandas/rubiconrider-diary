public class sampleEmailBodyTest {
    public list<Payment__c> list1{set;get;}
    public Payment__c first{set;get;}
  public void   sampleEmailBodyTest(){
        list1=[select id,emailbody__c from Payment__c where id='a042800000VdoIi'];
      system.debug(list1);
    }
}