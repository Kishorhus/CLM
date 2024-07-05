public class salesforceClasss {
    public static void salesoforcceMethod(){
        List<Account>acclist= [select id,Name from account limit 5];
        system.debug('acclist is :'+acclist);
        
        for(Account accvariable: acclist ){
            system.debug('accvariable:'+accvariable);
            
        }
        
    }
}