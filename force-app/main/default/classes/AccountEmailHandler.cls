public class AccountEmailHandler {
    public static void sendEmailToAccountOwner(Id accountId) {
        
        Account acc = [SELECT Id, Name, OwnerId FROM Account WHERE Id = :accountId];
        
        User accountOwner = [SELECT Id, Email FROM User WHERE Id = :acc.OwnerId];
        
        // Compose the email content
        String subject = 'New/Updated Record: ' + acc.Name;
        String body = 'A new record was created/updated in Salesforce with the following details:\n\n';
        body += 'Account Name: ' + acc.Name + '\n';
        // Add more fields from the record that you want to include in the email
        
        // Send the email
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setToAddresses(new List<String>{accountOwner.Email});
        email.setSubject(subject);
        email.setPlainTextBody(body);
        Messaging.sendEmail(new List<Messaging.Email>{email});
    }
}