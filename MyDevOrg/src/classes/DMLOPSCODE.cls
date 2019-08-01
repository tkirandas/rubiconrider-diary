public class DMLOPSCODE {
/*To insert records and see the status of error/sucesful operation
 List<Account>accs=new List<Account>();
Account a1=new Account(Name='DML Insert');
Account a2=new Account(Industry='Banking');
accs.add(a1);
accs.add(a2);
Database.SaveResult[] result=Database.insert(accs,false);
for(Database.SaveResult sr:result){
    if(sr.isSuccess()){
        System.debug('Record id:'+sr.getId());
    }else{
        for(Database.Error er:sr.getErrors()){
            system.debug('Error Message:'+er.getMessage());
            system.debug('Error fields:'+er.getFields());
            system.debug('Error status:'+er.getStatusCode());
        }
    }
}*/
    /*Update record 
Contact c1=new Contact();
c1.LastName='kumar';
c1.FirstName='kiran';
insert c1;
Account a1=new Account(Name='Ortus',phone='456');
insert a1;
c1.accountId=a1.Id;
update c1;



*/
    /*to upsert records
     * contact c1=new contact();
c1.lastName='ch';
c1.firstName='sonu';
c1.phone='123';
insert c1;
contact c2=new contact();
c2.lastname='kia';
c2.firstname='kukri';
c2.phone='456';

contact c3=new contact();
c3.firstname='ravi';

list<contact>cons=new List<contact>{c1,c2,c3};
    Database.upsertResult[] result=Database.upsert(cons,false);
for(Database.UpsertResult ur:result){
    if(ur.isSuccess()){
        if(ur.isCreated()){
            system.debug('Record is inserted'+ur.getId());
        }else{
            system.debug('Record updated'+ur.getId());
        }
    }else{
        for(Database.Error er:ur.getErrors()){
            system.debug('Error Message:'+er.getMessage());
            system.debug('Fields:'+er.getFields());
        }
    }
}

*/

}