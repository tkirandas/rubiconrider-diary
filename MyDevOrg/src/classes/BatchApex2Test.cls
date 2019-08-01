@isTest
private class BatchApex2Test {
    @isTest
    static void testme(){
       Account a1=new Account(Name='Count :29 ::size :0');
       insert a1;
       Test.startTest();
    BatchExample2 be=new BatchExample2();
        Database.executeBatch(be, 5);
        Test.stopTest();
        Account acc=[select name from Account where id=:a1.id];
       System.assertEquals('Count :29 ::size :0',acc.name);
}
}