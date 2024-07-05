/*
trigger AccountAddressTrigger on Account (before insert,  before update) {

       for(Account a:Trigger.New){
            If (a.Match_Billing_Address__c && a.BillingPostalCode!= Null) {
                a.BillingPostalCode= a.ShippingPostalCode ;  
        } 
    }
}
*/

trigger AccountAddressTrigger on Account (before insert, before update) {
    for (account acct:trigger.new)
    {
        if(acct.Match_Billing_Address__c == true)
       		acct.shippingPostalCode = acct.billingPostalCode;
    }
    
 	}
//my code states that if the Match Billing Checkbox is checked then before an account is inserted
/// or updated then the billing and shipping codes will be matched and added as new to the database.
/// my question is why is line 9 and action.  When I first tried to write it I wanted to write "then" as in if/then