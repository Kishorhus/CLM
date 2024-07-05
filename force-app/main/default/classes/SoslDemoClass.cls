public class SoslDemoClass {
    
    public static void SoslDEMO(){
        
        List <List<sObject>> AccList = [FIND 'Apex' IN ALL FIELDS RETURNING ACCOUNT ( ID, Name,Phone where Name='Sample Account for Entitlements'), contact(id,Name)];
        
        system.debug('Acclist:'+AccList);
    }

}