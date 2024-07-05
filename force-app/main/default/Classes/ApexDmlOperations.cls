public class ApexDmlOperations {

    public static void UpdateDMl(){
        
        
        Account AccountObject = [select id ,phone from Account where id='0012w00001HOtQ4AAL'];
        
        AccountObject.Phone='(336)222-7000';

		System.debug('Acoount Updated successfuly:'+AccountObject);		
        
        update AccountObject;
        
    }

}