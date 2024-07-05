import { LightningElement, api } from 'lwc';

export default class ApiDecorators extends LightningElement {

    message = 'private property';

    @api recordId;
}