//whenever case is created and case origin is phone,set priority is high and else low
/*
trigger caseTrigger on Case (before insert) {
    
    if(trigger.isBefore && trigger.isInsert){
        for(Case caseRec : trigger.new){
            if(caseRec.Origin =='Phone'){
                caseRec.Priority ='High';
                    }else{
                       caseRec.Priority='Low';
                }
            }
        }
    }

*/

trigger caseTrigger on Case (before insert){
    if(trigger.isBefore && trigger.isInsert){
        for(Case caseRecord : trigger.new){
            if(caseRecord.Origin =='Phone'){
                caseRecord.Priority ='High';
                
            }else{
                caseRecord.Priority ='Low';
                    }
                
            }
        }
    }