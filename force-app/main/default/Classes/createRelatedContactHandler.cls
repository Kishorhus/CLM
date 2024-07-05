public class createRelatedContactHandler {
    public static void relatedContactCreate(list <Account> accList){
        List <Contact> conList = new List <Contact>();
            for(Account acc : accList){
                Contact con = new Contact();
                con.FirstName=acc.Name +'FN';
                con.LastName= acc.Name +'LN';
                con.AccountId = acc.id;
                conList.add(con);
            }
        	if(!conList.isEmpty()){
            	insert conList;
        }  
    }

}