public class InvokeApexClass {
    
    @InvocableMethod(label=' delete reated oppo' description =' deleted the opportutnity for given record id' category='Account')
    public static void deleteOpportunities(List<String> ids){
        
        list<opportunity> Listoppourtunity = [select id from Opportunity where AccountId =:ids AND stageName='Closed won'];
        delete Listoppourtunity;
    }

}