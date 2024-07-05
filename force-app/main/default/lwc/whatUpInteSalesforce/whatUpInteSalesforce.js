import { LightningElement,api } from 'lwc';

import SendMessage from '@salesforce/apex/WhatMessenger.SendMessage';

export default class WhatUpInteSalesforce extends LightningElement {

    @api recordId;

    MessageHandler(){

        SendMessage({ContactId : this.recordId})
        .then (result => {
            window.alert("Message send successfully");
        })
        .catch (error => {
            window.alert("Message Failed ");
        })

    }

}