// createAccountRecord.js
import { LightningElement, track } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class CreateAccountRecords extends LightningElement {
    @track firstName = '';
    @track lastName = '';

    handleFirstNameChange(event) {
        this.firstName = event.target.value;
    }

    handleLastNameChange(event) {
        this.lastName = event.target.value;
    }

    createAccount() {
        const fields = {
            FirstName: this.firstName,
            LastName: this.lastName
        };

        const recordInput = { apiName: ACCOUNT_OBJECT.objectApiName, fields };
        createRecord(recordInput)
            .then(account => {
                console.log('Account created with Id: ', account.id);
                // Optionally, show a success message or perform further actions
            })
            .catch(error => {
                console.error('Error creating account: ', error);
                // Optionally, show an error message or handle the error
            });
    }
}