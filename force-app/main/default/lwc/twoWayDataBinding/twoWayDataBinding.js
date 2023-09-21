import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {

    name = 'kishor_Mudhol'

    handleNameChange(event){
        this.name = event.target.value();
    }

}
