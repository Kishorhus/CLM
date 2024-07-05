public class CreateContactController {
    @AuraEnabled
    public static void createContact(Contact newContact, Id accountId) {
        System.debug('AccoutID:'+accountId);
        System.debug('Recordid:'+newContact);

        newContact.AccountId = accountId;
        insert newContact;
    }
}