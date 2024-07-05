/*({
    getMessage : function(component, event) {
        //get method paramaters
        var params = event.getParam('arguments');
        if (params) {
            var param1 = params.childGreetingParam;
            var param2 = params.childPersonNameParam;
            alert(param1 + " " + param2);
        }
    }
})
*/

({
    firecomponentEvent : function(component, event) {
        var componentEvent = component.getEvent("cmpEvent");
        var msgString =component.get("v.messageString");
        
        msgString = $A.util.isEmpty (msgString) ? "No Message passed" : msgString ;
        
        componentEvent.setParams({
            "message" : msgString,
            "label"	: "Custom Label"
        });
        
            componentEvent.fire();
    }     
})