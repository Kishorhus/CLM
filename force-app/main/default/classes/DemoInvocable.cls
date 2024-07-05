public class DemoInvocable {
    
    @invocableMethod
    public static void invocableMethod(list <string> str){
        
        List< Account> ListofAc = new List<Account> ();
        ListofAc =  [select id, Name from Account limit 10];
        
       // Account ListOfAccount =  [select id, Name from Account limit 5];
        
        system.debug('ListofAc'+ListofAc);
        for ( Account AccList:ListofAc ){
            system.debug('AccList'+AccList);
        }
    }

}