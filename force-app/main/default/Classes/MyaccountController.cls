public class MyaccountController {
    public  List <Account> accountList {get;set;}
    
    public MyaccountCOntroller(){
        accountList= [ select id,name from account];
    }

}