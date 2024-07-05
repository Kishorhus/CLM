import { LightningElement, wire,api } from 'lwc';

import { getRecord, getFieldValue } from 'lightning/uiRecordApi';


//import NAME_FIELD from '@salesforce/schema/Account.Name' ;
//import PHONE_FIELD from '@salesforce/schema/Account.Phone' ;

export default class WIreDecorators extends LightningElement {
    @api recordID;


    @wire(getRecord,{recordID: '$recordID',fields:['Account.Name','Account.Phone']})
    record;

    get name(){
       // return this.record.data ? getFieldValue(this.record.data,'Account.Name') :'';

        return this.record.data.fields.name.value;

    }
    get phone(){
        //return this.record.data ? getFieldValue(this.record.data,'Account.Phone') :'';
        return this.record.data.fields.phone.value;

    }



}