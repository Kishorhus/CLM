/*public with sharing class UserInformationController {
    public UserInformationController() {

    }
}
*/

public with sharing class UserInformationController {
    @AuraEnabled
    public static void createUserInformation(String firstName, String lastName, String password) {
        User_Information__c userInfo = new User_Information__c(
            First_Name__c = firstName,
            Last_Name__c = lastName,
            Password__c = password
        );
        insert userInfo;
    }
}
