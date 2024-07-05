public class UpdateParentAccount implements Queueable { // this is queueable apex method
    
    private List <Account> AccList;
    private Id parentAccID;
    
    public updateparentAccount(List<Account>Accrecords, id ID){
        
        this.AccList = AccList;
        this.parentAccID = parentAccID;
    }
    
    public void execute(QueueableContext context){
        
        for(Account acc: AccList){
            acc.parentID = parentAccID;
        }
        insert AccList;
    }

}