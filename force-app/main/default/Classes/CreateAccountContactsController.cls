public with sharing class CreateAccountContactsController {

    @AuraEnabled
    public static void createContactRecord(Id accountId, String firstName, String lastName) {
        Contact newContact = new Contact();
        newContact.AccountId = accountId;
        newContact.FirstName = firstName;
        newContact.LastName = lastName;

        try {
            insert newContact;
        } catch (Exception e) {
            throw new AuraHandledException('Error creating contact: ' + e.getMessage());
        }
    }
}