/*
THIS IS REST DEMO WHERE YOU CAN MANIPULATE THE SALESFORCE DATA USING EXTERNAL SYSTEM I.E WORKBENCH.I WROTE THE @GET @POST @DELETE METHOD.
AND DECELRE THIS CLASS AND METHOD ARE THE GLOBAL
*/
@RestResource(urlMapping='/AccountDataService/*')

global class RestInteg {
    @HttpGet
    global static list<Account>getAccounts(){
        List<Account>Acc = [Select Id,Name FROM Account];
        return acc;
    }
    
    @HttpPost
    global static string CreatedNewAccount(String Name, String Phone, String Fax, String AccountNumber,string Description){
        Account a = New Account();
        a.Name =Name;
        a.Phone =Phone;
        a.Fax = Fax;
        a.AccountNumber = AccountNumber;
        a.Description = Description;
        Insert a;
        
        return 'Account is created:'+a.id;
    }
    
    @HttpDelete
    global static string deleteAccCountrybyID(){
        
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
		string accid = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [Select id,Name ,Phone,website FROM Account WHERE id=:accid];
        delete result;
        
        return 'Account deleted:'+result.Name;
    }

    @HttpPut
    global static string updateAccount(String id,String newName){
        Account a =[Select  Id,Name FROM Account Where  id=:id];
        a.Name = newName;
        update a;
        
        return 'account updated:'+Account.Name;
    }
}