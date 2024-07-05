/*public with sharing class StudentController {
    public StudentController() {

    }
}
*/

public with sharing class StudentController {
    @AuraEnabled
    public static void createStudentRecord(Student__c studentData) {
        insert studentData;
    }
}