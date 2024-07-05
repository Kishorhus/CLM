public class SOQLdemoClass {
    
    public static void GetRecordsDetails(){
        
        List<Account> myList= [select id ,name,Rating from Account where Rating= 'Hot'];
        
        system.debug('MyList:'+myList);
        
        integer i =[ select COUNT () from Account where Rating ='Hot']; // using the count method in the querying 
        
       system.debug('i'+i); // storing the result in proper valid data types with using integer i

    }

}