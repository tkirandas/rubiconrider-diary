trigger findcontactsCount on Contact ( after delete)//after insert, after update,
{
    
    List<Account> accountListToUpdate = new List<Account>();
    
    List<Contact> modContacts = Trigger.isDelete?Trigger.old:Trigger.new;
    
    Set<Id> accIds = new Set<Id>();
    
    for(Contact con: modContacts)
    {
        accIds.add(con.AccountId);
    }
    
    List<Account> modAccounts = [SELECT Id,Name,(SELECT Id,Name,lastname from Contacts) from Account WHERE Id IN : accIds];
    Map<Id,List<Contact>> accMap = new Map<Id,List<Contact>>();
    
    for(Account acc: modAccounts)
    {
        List<Contact> conList = acc.contacts;
        /*To get the count of the number of contacts for each account.
         acc.Number_of_Contacts__c = conList.size();
		 accountListToUpdate.add(acc);
		*/
        accMap.put(acc.id, acc.contacts);
        system.debug('Account :'+acc.Name+'  Number of Contacts  '+conList.size());
    }
    	//update accountListToUpdate;    
    for (Id ids : accMap .keySet())
    {
        for(Contact con : accMap.get(ids))
        {
            if(con.lastname =='Kiran')
            {
             con.addError('Cannot delete contact if name is Kiran');
            }
           
        }        
    }

}