/*public class SobjectsDemo {
    
    public static void demo(){
         standard obj
        
        Account accobj = new Account();
        accobj.Name = 'Salesforce Batch'; 
       insert accobj;
      system.debug('account insert');
       
        sObject obj = [ select id, name from Account where Name='Salesforce Batch' limit 1];
        System.debug('obj inserted:'+obj);
        System.debug('obj id:'+obj.id);
        System.debug('obj id:'+obj.name);
  
        //System.debug('accobj:'+accobj);
        
        // for the custom object we need to use the its API
        // name to create the instance 
         
  		//generic object
    }

}

*/

public class SobjectsDemo{
    
    public static void Method1(){
        
        List <Account> Mylist = new List <Account> ();
        
        Account accountobj = new Account();
        accountobj.Name=' Apex DML Operations Account';
        
        Mylist.add(accountobj);
        system.debug('acount created:'+Mylist);
        
        if(!Mylist.isEmpty()){
            insert Mylist;
            system.debug('MyList inserted:'+Mylist[0].id);
            inserrtRelatedContact(Mylist[0].id);
       }
        
    }
    
        public static void inserrtRelatedContact( string AccountIds){
            System.debug('Account from above id:'+AccountIds);
            
            contact con = new contact (
             FirstName='Ram',
             LastName = 'Pawar',
             Phone = '78877878',
             Email = 'kishor@gmail.com',
             AccountID = AccountIds
            );
            
            system.debug('account inserted');
            insert con;
            
        
    }
    
}