public class SOQLemoClass1 {
    
    /*public static void SOQLdemo (){
        
       List<contact> Conn= [select id ,Name,AccountId, Account.Name, Account.Phone from Contact where id ='0032w00000xJzf8AAC'];
        
        system.debug('details:'+Conn);
    }*/
    
    public static void SOQLdemoClass(){
        
        List<Account> AccountList = [select id , Name, (select id ,Name, Phone from Contacts) from Account where id = '0012w00001HOtQ4AAL'];
        
        System.debug('AccountList:'+AccountList);
    }

}