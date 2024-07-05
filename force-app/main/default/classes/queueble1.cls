/*
 Inserting the account with an related contacts and also calling one queueable from another queueable.
*/
public class queueble1 implements Queueable  {
    public void execute (QueueableContext context){
        Account a = new Account();
        a.Name ='Krishna';
        a.AccountNumber = '542421';
        insert a;
        
       System.enqueueJob(New queueable2(a.id)); 
    }
}