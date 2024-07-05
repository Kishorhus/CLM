({
	displayMessage : function(component, event) {
        
            var params = event.getParam('arguments');
            if (params) {
            	var param1 = params.firstName;
            	var param2 = params.LastName;
                var param3 = params.Age;
           		alert(param1 + " " + param2 +" "+param3);
            
        }
	}
})