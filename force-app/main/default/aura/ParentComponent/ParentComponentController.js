/*({
    callAuraMethod : function(component, event, helper) {
        //Call Child aura method
        var childComponent = component.find("childCmp");
        var message = childComponent.childMessageMethod('Happy Coding','Readers');
        // We can also pass parameters from parent component to child component like this:

    }
})
*/

({
    handlecomponentEvent : function(component, event, helper){
        
        var message = event.getParams("message");
        var label = event.getParams("label");
        
        component.set("v.msgfromNotifier",message);
        component.set("v.label",label);
        
        var count = parseInt(component.get("v.eventCount")+1);
        component.set ("v.eventCount",count);


    }
})