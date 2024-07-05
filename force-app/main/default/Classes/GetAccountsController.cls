public class GetAccountsController {
    @AuraEnabled
    public static List<Account> getAccounts() {
        // Query the records from the Account object
        return [SELECT Id, Name, Industry, Phone, BillingCity, BillingState, Website FROM Account LIMIT 10];
        // You can customize the query to include specific fields or add conditions as per your requirements.
    }
}