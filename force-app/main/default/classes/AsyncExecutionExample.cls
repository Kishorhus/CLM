public class AsyncExecutionExample implements Queueable {
    public void execute(QueueableContext context) {
        Account a = new Account(Name='Sforce Batch',Phone='(789) 455-1212');
        insert a; 
        AsyncApexJob jobInfo = [SELECT Status,NumberOfErrors FROM AsyncApexJob WHERE Id='7072w00009KUNHv'];
    }
}
//Integer delayInMinutes = 5; we can provide the delay in class
//ID jobID = System.enqueueJob(new MyQueueableClass(), delayInMinutes);
//
//Delay will ignored by the Apex Testing