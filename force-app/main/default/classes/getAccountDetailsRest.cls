@RestResource(urlMapping='/getAccDetails/*')

global class getAccountDetailsRest {
	@Httpget
    global static string accDetails (){
        List<Account> accData =[select id,Name,Phone FROM Account LIMIT 100];
        
        String jsonString = JSON.serialize(accData);
        
        return jsonString;
    }
}


/*@RestResource(urlMapping='/accountDetails/*')
global with sharing class AccountDetailsRestResource {

    @HttpGet
    global static String doGet() {
        List<Account> accounts = [SELECT Id, Name, Industry, Type FROM Account LIMIT 100]; // You can adjust the query based on your requirements

        // Serialize the list of accounts to JSON
        String jsonString = JSON.serialize(accounts);
	
	serialazation is converting objects into string in any encoding language like xml/JSON
        return jsonString;
    }
}
*/