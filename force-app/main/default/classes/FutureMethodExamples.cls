global class FutureMethodExamples {
    
    @future
    public static void ExampleFutureme(){
        List<Account> acc = [Select Id,Name,Phone,Website FROM Account];
        for(Account acc1 : acc){
            System.debug('Account List'+acc1);
        }
        
    }

}