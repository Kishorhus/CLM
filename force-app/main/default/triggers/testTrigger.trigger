/* This is trigger is helps to copy the content of billing address to the shipping automaticaly!.
 * Automatically populate account billing address into account shipping address:
 *  Write a trigger on Account, when an account is inserted, 
 * automatically account billing address should populate into the account shipping address 
*/

trigger testTrigger on Account (before insert,before update) {
    if (trigger.isBefore &&(trigger.isInsert || trigger.isUpdate)){
        if(!trigger.new.isEmpty()){
            for (Account acc : trigger.new)
            {
                if(acc.BillingStreet !=null){
                    acc.ShippingStreet = acc.BillingStreet;                
            }
                
                {
                    if(acc.BillingCity != null){
                    acc.ShippingCity =acc.BillingCity;
                }
                
                }
                if(acc.BillingState != null){
                    acc.ShippingState = acc.BillingState;
                }
            }
        }  
    }
}