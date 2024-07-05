import { LightningElement } from 'lwc';

export default class GetuserName extends LightningElement {
    firstName = '';
    lastName = '';

    handleChange(event) {
        if (event.target.label === 'First Name') {
            this.firstName = event.target.value;
        } else if (event.target.label === 'Last Name') {
            this.lastName = event.target.value;
        }
    }
}