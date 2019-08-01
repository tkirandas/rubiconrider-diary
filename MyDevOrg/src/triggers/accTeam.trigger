trigger accTeam on Account (after insert,after update) {
    if(Trigger.isAfter&&Trigger.isInsert){
        AccountTeamTrigger.addMember(Trigger.New);
    }
    if(Trigger.isAfter&&Trigger.isUpdate){
        AccountTeamTrigger.addMember(Trigger.New);
    }
}