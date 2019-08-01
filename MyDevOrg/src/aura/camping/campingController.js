({
    clickCreateItem : function(component, event, helper) {
        var validnewItem = component.find('newItemform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        // If we pass error checking, do some real work
        if(validnewItem){
            // Create the new expense
            var newItem = component.get("v.newItem");
            console.log("Create expense: " + JSON.stringify(newItem));
            helper.createnewItem(component, newItem);
        }
    }
})


({
    createnewItem:function(component, newItem) {
        var thenewItems = component.get("v.items");
 
        // Copy the expense to a new object
        // THIS IS A DISGUSTING, TEMPORARY HACK
        var newItem = JSON.parse(JSON.stringify(items));
 
        console.log("Items before 'create': " + JSON.stringify(thenewItems));
        thenewItems.push(newItem);
        component.set("v.expenses", theExpenses);
        console.log("Iteams after 'create': " + JSON.stringify(thenewItems));

    }
})