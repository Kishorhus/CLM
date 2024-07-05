import { LightningElement } from 'lwc';



/*import { LightningElement } from 'lwc';
*/
export default class Student_Registration extends LightningElement {
    firstName = '';
    lastName = '';
    email = '';

    handleFirstNameChange(event) {
        this.firstName = event.target.value;
    }

    handleLastNameChange(event) {
        this.lastName = event.target.value;
    }

    handleEmailChange(event) {
        this.email = event.target.value;
    }

    handleSubmit() {
        // Add logic to handle form submission here
    }
}