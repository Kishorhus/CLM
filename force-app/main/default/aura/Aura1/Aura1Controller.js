/*
({
    myAction : function(component, event, helper) {

    }
})

*/

({
    saveUserInfo: function(component, event, helper) {
        var firstName = component.get("v.firstName");
        var lastName = component.get("v.lastName");
        
        
        console.log("First Name: " + firstName);
        console.log("Last Name: " + lastName);
    }
})
