({
	/*ChangeValue : function(component, event, helper) {
		var childCmp = component.find("childCmp");
        childCmp.CallChild('kishor','Mudhol',24); //calling parent to child component
     */   
        
        ChangeValue : function(component, event, helper) {
        //Call Child aura method
        var childComponent = component.find("childCmp");
        var message = childComponent.CallChildMessage('Kishor','Mudhol','24');
        // We can also pass parameters from parent component to child component like this:

	}
})