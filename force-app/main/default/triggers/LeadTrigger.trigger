trigger LeadTrigger on Lead (before update) {

//whenever lead  update, set status is Working-contacted
    
    if(trigger.isBefore && trigger.isUpdate)
        for(Lead leadRecord : Trigger.New){
            leadRecord.Status ='Wroking-Contacted';
        }
}