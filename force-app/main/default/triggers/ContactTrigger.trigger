trigger ContactTrigger on Contact (before insert ,before update) {
    
    if(Trigger.isInsert){
        System.debug('new size:'+Trigger.new); //return the new version of the list
        System.debug('new size:'+Trigger.old); // return the old version of the list cannot hold any value before inserting the any records oldMAp newMap
    }

}