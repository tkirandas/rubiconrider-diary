trigger OppSatish on Opportunity (after insert,after update,after delete,after undelete) {
    if((Trigger.isInsert)||(Trigger.isUpdate)||(Trigger.isDelete)){
        OppSaTrig.increment(Trigger.New);
    }else{
        OppSaTrig.increment(Trigger.Old);
    }

}