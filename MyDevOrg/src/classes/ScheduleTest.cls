@isTest
private class ScheduleTest {
@isTest
    static void Testme(){
        Integer count=[select count() from Account];
        string cronExp='0 0 10 23 3 ?';
        ID jobId;
        Test.startTest();
        ScheduleExample se=new ScheduleExample();
        jobID=system.schedule('Italian Job', cronExp, se);
        Test.stopTest();
        Integer size=[select count() from Account];
        system.assertEquals(size, count+1);
        cronTrigger ce=[select cronExpression FROM cronTrigger where id=:jobId];
        system.assertEquals(ce.CronExpression,cronExp);
    }
}