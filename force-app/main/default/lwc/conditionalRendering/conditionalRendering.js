import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement {

    DetailsareVisible = true;

    handlerEvent(event){
        this.DetailsareVisible = event.target.checked;
    }
}