/*Send an email to the System Admin user: Once an Account is inserted an email should go to the System Admin user with specified text */

trigger SendEmailOnAccountInsert on Account (after insert) {
    
    List<Messaging.singleEmailMessage> emails = new List<Messaging.singleEmailMessage>();
    
    Messaging.singleEmailMessage email = new Messaging.singleEmailMessage();
    
    email.setToAddresses(new List<String>{'mudholkishor@gmail.com'});
    email.setSubject('A new account is inserted!');
    email.setPlainTextBody('A new accont created Please review that one Please!');//////////////////////////
    emails.add(email);
    System.debug('mail sent succesfully!');
    
    messaging.sendEmail(Emails);
   
}