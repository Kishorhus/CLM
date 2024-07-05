import { LightningElement } from 'lwc';

export default class Lwc_Comm extends LightningElement {

    input = 'Welcome LWC_World';
    changeHandler(event) {
      this.input = event.target.value;
    }

}