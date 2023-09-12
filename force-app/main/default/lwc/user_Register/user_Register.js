/*import { LightningElement } from 'lwc';

/*export default class User_Register extends LightningElement {}
*/

import { LightningElement, track } from 'lwc';

import createUserInformation from '@salesforce/apex/UserInformationController.createUserInformation';

export default class User_Register extends LightningElement {
    @track firstName = '';
    @track lastName = '';
    @track password = '';

    handleFirstNameChange(event) {
        this.firstName = event.target.value;
    }

    handleLastNameChange(event) {
        this.lastName = event.target.value;
    }

    handlePasswordChange(event) {
        this.password = event.target.value;
    }

    handleSubmission() {
        createUserInformation({
            firstName: this.firstName,
            lastName: this.lastName,
            password: this.password
        })
            .then(result => {
                // Handle success
                console.log('Record created successfully:', result);
                // Reset form fields
                this.firstName = '';
                this.lastName = '';
                this.password = '';
            })
            .catch(error => {
                // Handle error
                console.error('Error creating record:', error);
            });
    }
}
