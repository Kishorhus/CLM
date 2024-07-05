public class SendEmaitoContact {  
    
    @InvocableMethod (label = 'send mail to contact' description ='send mail to contact case ' category='case')
      public static void SendMailToContact( List <Request> requestList){
          
        String contactId = requestList.get(0).contactId;
        String Casenumber = requestList.get(0).Casenumber;
          
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.toaddresses = new String [] {contactId};
        message.subject = 'your case has been received'+ Casenumber;
        message.plainTextbody='Your case has been received!.';
        message.setSaveAsActivity(true);
        Messaging.SingleEmailMessage [] messages = new List < Messaging.SingleEmailMessage> {message};
        Messaging.sendEmailResult [] results = Messaging.sendEmail(messages);
        if(results[0].success) {
            System.debug('the Email was send sucessfully');
        }else{
            System.debug('The Email failed to send'+ results[0].errors[0].message);
        }
    }
    
    	public class Request{
        
            @InvocableVariable (label='case id' required ='true')
            public string caseId;
            @InvocableVariable (label='contact id' required ='true')
            public string contactId;
            @InvocableVariable (label='case number' required ='true')
            public String Casenumber;
            
    }

}