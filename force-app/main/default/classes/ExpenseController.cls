/*public with sharing class ExpenseController {
    @AuraEnabled(cacheable=true)
    public static void createExpense(String expenseType, Decimal amount, Date expenseDate, String description) {
        ExpenseDetails__c newExpense = new ExpenseDetails__c(
            Expense_Type__c = expenseType,
            Amount__c = amount,
            Expense_Date__c = expenseDate,
            Description__c = description
        );
        try {
            insert newExpense;
        } catch(Exception e) {
            throw new AuraHandledException('Error saving expense: ' + e.getMessage());
        }
    }
}
*/

public with sharing class ExpenseController {

    @AuraEnabled(cacheable=true)

    public static List<	ExpenseDetails__c> getExpenses(String startDate, String endDate, String expenseType, String status) {

        String query = 'SELECT Id, ExpenseType__c, Amount__c, Status__c FROM Expenseobj__c ';
        

        if (startDate != null && startDate != '') {

            query += '  Where Date__c >= ' + startDate;

        }
        if (endDate != null && endDate != '') {
            query += ' AND Date__c <= ' + endDate;
        }

        /*if (expenseType != null && expenseType != '') {

            query += ' AND ExpenseType__c = ' + expenseType;

        }*/
			if (String.isNotBlank(expenseType)){

            query += ' AND ExpenseType__c =  :expenseType';

        }
        
        if (String.isNotBlank(status)) {
            query += ' AND Status__c = :status';
        } 
        
        return Database.query(query);

    }

}