({
    createContact: function(component, event, helper) {
        var action = component.get("c.createContact");
        console.log('recodID :'+component.get("v.recordId"));
        console.log('contact :'+component.get("v.contact"));

        action.setParams({
            "newContact": component.get("v.contact"),
            "accountId": component.get("v.recordId")
        });

 

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                $A.get("e.force:refreshView").fire();
            } else {
                console.log("Error creating Contact: " + response.getError());
            }
        });

 

        $A.enqueueAction(action);
    }
})