trigger ContactInsert on Contact (after insert) {
    List<Task> tasks=new List<Task>();
    for(Contact c:Trigger.New){
        Task t=new Task();
        t.subject='Trigger call';
        t.status='Not started';
        t.ActivityDate=System.today()+3;
        t.whoId=c.id;
        tasks.add(t);
    }
insert tasks;
}