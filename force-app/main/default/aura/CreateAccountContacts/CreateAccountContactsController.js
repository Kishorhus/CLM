({
    createContact: function (component, event, helper) {
        var action = component.get("c.createContactRecord");
        action.setParams({
            accountId: component.get("v.accountId"),
            firstName: component.get("v.firstName"),
            lastName: component.get("v.lastName")
        });

        action.setCallback(this, function (response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title: "Success",
                    message: "Contact created successfully.",
                    type: "success"
                });
                toastEvent.fire();
            } 
        });
        $A.enqueueAction(action);
    }
})

		/*action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                $A.get("e.force:refreshView").fire();
            } else {
                console.log("Error creating Contact: " + response.getError());
            }
        });
*/