/************************************************************
 Lightning Controller  Details
 Name: CreateCandidateRecordController.js
 Type: Lightning Controller 
 Purpose: Controller for  lightning component 
		  CreateCandidateRecordController.cmp
 ***********************************************************/
({
	create : function(component, event, helper) {
		console.log('Create record');
        
        //getting the candidate information
        var candidate = component.get("v.candidate");
        
        //Validation
        if($A.util.isEmpty(candidate.First_Name__c) || $A.util.isUndefined(candidate.First_Name__c)){
            alert('First Name is Required');
            return;
        }            
        if($A.util.isEmpty(candidate.Last_Name__c) || $A.util.isUndefined(candidate.Last_Name__c)){
            alert('Last Name is Required');
            return;
        }
        if($A.util.isEmpty(candidate.Email__c) || $A.util.isUndefined(candidate.Email__c)){
            alert('Email is Required');
            return;
        }
        if($A.util.isEmpty(candidate.SSN__c) || $A.util.isUndefined(candidate.SSN__c)){
            alert('SSN is Required');
            return;
        }
        //Calling the Apex Function
        var action = component.get("c.createRecord");
        
        //Setting the Apex Parameter
        action.setParams({
            candidate : candidate
        });
        
        //Setting the Callback
        action.setCallback(this,function(a){
            //get the response state
            var state = a.getState();
            
            //check if result is successfull
            if(state == "SUCCESS"){
                //Reset Form
                var newCandidate = {'sobjectType': 'Candidate__c',
                                    'First_Name__c': '',
                                    'Last_Name__c': '',
                                    'Email__c': '', 
                                    'SSN__c': ''
                                   };
                //resetting the Values in the form
                component.set("v.candidate",newCandidate);
                alert('Record is Created Successfully');
            } else if(state == "ERROR"){
                alert('Error in calling server side action');
            }
        });
        
		//adds the server-side action to the queue        
        $A.enqueueAction(action);

	}
})