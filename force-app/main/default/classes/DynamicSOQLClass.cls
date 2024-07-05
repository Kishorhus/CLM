public class DynamicSOQLClass {
    
    //@AuraEnabled
    public static void GetSOQLData( String ObjectName,String field1,String field2){
        
        List <sObject> DynamicList = Database.query('select '+ field1+','+field2+' from '+ObjectName+' limit 5');
        
        System.debug('Dyanamic List Is'+DynamicList);
    }

}