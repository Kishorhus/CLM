public class InvocableApexFromExample {
    
    @invocableMethod (label='Get opportunity list no')
    
    public static List <Opportunity> GetOppourtunityReacords (List <String> args){
        
        string accountID =args[0];
        
        List <Opportunity> OpportunityList = [select id ,Name,Amount from Opportunity WHERE accountID=:accountID order by Amount ASC LIMIT 1 ];
        
        return OpportunityList;
        
        //system.debug('OpportunityList is:'OpportunityList);
        
    }
}