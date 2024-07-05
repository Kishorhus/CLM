public class EmailtoAccount {
    @InvocableMethod
    public static void sendEmailToAccountOwner(List<Id> accountIds) {
        List<Account> accounts = [SELECT Id, Name, OwnerId FROM Account WHERE Id IN :accountIds];
        
        List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
        
        for (Account acc : accounts) {
           
            User accountOwner = [SELECT Id, Email FROM User WHERE Id = :acc.OwnerId];
            
            
            String subject = 'New/Updated Record: ' + acc.Name;
            String body = 'A new record was created/updated in Salesforce with the following details:\n\n';
            body += 'Account Name: ' + acc.Name + '\n';
            // Add more fields from the record that you want to include in the email
            
            // Create the email
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(new List<String>{accountOwner.Email});
            email.setSubject(subject);
            email.setPlainTextBody(body);
            emails.add(email);
        }
        
        // Send the emails
        Messaging.sendEmail(emails);
    }
}