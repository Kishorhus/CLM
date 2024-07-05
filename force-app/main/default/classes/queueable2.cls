public class queueable2 implements Queueable {
    
    private Id accountId;
    
    public queueable2(Id accid){
         accountId = accid;
    }
       
    
    public void execute (QueueableContext context){
        
        Contact con = New Contact(AccountId =accountId);
        con.Phone = '451212';
        con.FirstName = 'Kishor';
        con.LastName = 'Mudhol';
        
        insert con;
        
    }

}