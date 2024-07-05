({
	fireComponentEvent : function(component, event, helper) {
        
        var cmpEvent = cmp.getEvent("cmpEvent"); 

   		 cmpEvent.setParams({"message" : "A component event fired me. "}); 

  		 cmpEvent.fire(); 
		
	}
})