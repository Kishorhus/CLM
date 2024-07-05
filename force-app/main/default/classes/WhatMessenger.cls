public class WhatMessenger {

    @AuraEnabled (cacheable=true)

    public static Boolean SendMessage (String ContactId){

        Contact ContactDetail = [Select id,Phone from Contact where Id =: ContactId];

        String WhatsappNumber = '91' + ContactDetail.Phone;
        System.debug('WhatsappNumber is'+ WhatsappNumber);

        // this is for http request code
        Http http = new Http();

        HttpRequest req = new HttpRequest();

        req.setEndpoint('//graph.facebook.com/v18.0/158266134026685/messages ');

        req.setHeader('Content-Type','application/json');

        req.setMethod('POST');

        String body = '{ "messaging_product": "whatsapp", "to": "WhatsappNumber", "type": "template", "template": { "name": "hello_world", "language": { "code": "en_US" } } }';

        req.setBody(body);

        String apitoken = 'EAAUJ4lhP3wwBOZBjySwiBtm4v8vUOIZBoFum0vZBic5dGQz6yFYZALCTA4ZCoYDS8TGEBbJtkGQ7ttWZBoNkix1ZBcZBMb2g4wUyJkIlBDUqS2cfZBIxhEUuambJgI3rkRsVZCfXz4SmaDCRXfvLVIKUgfxNc2YbV2q6orlCqJzcLoXWRZAkp6jab9kiPglwoyCTfoeGHdb77sgUhRIZBPhBw3U0n5dkdlD5MFUJKeYZD';

        req.setHeader('Authorization','Bearer'+apitoken);

        httpResponse res = http.send(req);

        if(res.getStatusCode()==200){
            return true;
        }
        return false;

    }

}