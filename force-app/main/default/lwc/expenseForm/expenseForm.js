import { LightningElement ,track,wire,api} from 'lwc';

import { createRecord } from 'lightning/uiRecordApi';

import getExpenses from '@salesforce/apex/ExpenseController.getExpenses';

const columns = [

    { label: 'Expense Type', fieldName: 'ExpenseType__c', type: 'text' },

    { label: 'Amount', fieldName: 'Amount__c', type: 'currency' },

    { label: 'Status', fieldName: 'Status__c', type: 'text' }

];

 

export default class ExpenseDLF extends LightningElement {

 

    @track Name = '';

    @track message = '';

    @track Expensetype ='';

    @track Discription='';

    @track Amount='';

    @track Date='';

    handleNameChange(event) {

    this.Name = event.target.value;

    }

   

    handleExpensetypeChange(event) {

        this.Expensetype = event.target.value;

        }

     handleDiscriptionChange(event) {

        this.Discription = event.target.value;

            }

    handleAmountChange(event) {

        this.Amount = event.target.value;

                }

    handleDateChange(event) {

        this.Date = event.target.value;

              }

 

    handleSubmit() {

    const fields = {

        Name: this.Name,

        ExpenseType__c: this.Expensetype,

        Discription__c: this.Discription,

        Amount__c: this.Amount,

        Date__c: this.Date

    };

    const recordInput = { apiName: 'Expenseobj__c', fields };

   

    createRecord(recordInput)

    .then(result => {

   

    this.message = 'Record created successfully with ID: ' + result.id;

    // Clear the form fields or reset as needed

    this.Name = '';

    this.Expensetype='';

    this.Discription='';

    this.Amount='';

    this.Date='';

    })

    .catch(error => {

    this.message = 'Error creating record: ' + JSON.stringify(error);

    });

    }

// list Logic

 

    @track startDate = '';

    @track endDate = '';

    @track expenseType = '';

    @track status = '';

    @track filteredExpenses = [];

    @track columns = columns;

 

    @wire(getExpenses, { startDate: '$startDate', endDate: '$endDate', expenseType: '$expenseType', status: '$status' })

    wiredExpenses({ data, error }) {

        if (data) {

            this.filteredExpenses = data;

        } else if (error) {

            console.error('Error loading expenses: ' + error);

        }

    }

 

    handleStartDateChange(event) {

        this.startDate = event.target.value;

    }

 

    handleEndDateChange(event) {

        this.endDate = event.target.value;

    }

 

    handleExpenseTypeChange(event) {

        this.expenseType = event.target.value;

    }

    handleStatusChange(event) {

        this.status = event.target.value;

    }

    handleStatusChange(event) {

        this.status = event.target.value;

    }

    get options() {

        return [

            { label: 'Approved', value: 'Approved' },

            { label: 'Rejected', value: 'Rejected' },

            { label: 'Pending', value: 'Pending' },

        ];

    }

 

 

    applyFilters() { console.log('HI');

    console.log('Start Date:', this.startDate);

console.log('End Date:', this.endDate);

console.log('Expense Type:', this.expenseType);

 

        getExpenses({ startDate: this.startDate, endDate: this.endDate, expenseType: this.expenseType, status: this.status })

        .then(result => {

            this.filteredExpenses = result;

        })

        .catch(error => {

            console.error('Error loading expenses: ' + error);

        });

       

    }

}