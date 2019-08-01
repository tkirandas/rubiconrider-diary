@isTest
private class BatchApexTest {
	@isTest
    static void testme(){
       Account a1=new Account(Name='aaaq');
       insert a1;
       Test.startTest();
        	BatchExample be=new BatchExample();
			Database.executeBatch(be,5);
       Test.stopTest();
       Account acc=[select description from Account where id=:a1.id];
       System.assertEquals('This is testing2',acc.description);
    }
}
/*@isTest
private class BatchApexTest {
 @isTest
    static void testme(){
        Account a1=new Account(Name='axa');
        insert a1;
        Test.startTest();
     BatchExample be=new BatchExample();
        Database.executeBatch(be,5);
        Test.stopTest();
   
    Account acc=[select description from Account where id=:a1.id];
   System.assertEquals(a1.description,'This is testing');
   } 

}*/