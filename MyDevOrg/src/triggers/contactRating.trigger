trigger contactRating on Contact (after insert,after update) {
    
    if(trigger.isInsert){
        contRatingEx1.calc(Trigger.new);
        Database.executeBatch(new contRateBatch());
    }
    if(trigger.isUpdate){
		contRatingEx1.updating(trigger.new);
        Database.executeBatch(new contRateBatch());
    }
}