import { LightningElement } from 'lwc';
export default class RenderingListUsingHTML extends LightningElement {

    contacts = [
        {
            Id : 1,
            Name : 'kishor Mudhol',
            Title : 'LWC Learner'
        },

        {
            Id : 2,
            Name : 'Ram',
            Title : 'Dev1'
        },

        {
            Id : 3,
            Name : 'Sunit',
            Title : 'Dev2'
        },

        {
            Id : 4,
            Name : 'Vinaya',
            Title : 'Dev3'
        }

    ];

}