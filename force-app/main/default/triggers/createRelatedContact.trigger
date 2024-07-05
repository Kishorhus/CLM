trigger createRelatedContact on Account (after insert) {
    if(Trigger.isInsert){
        if(Trigger.isAfter){
            createRelatedContactHandler.relatedContactCreate(Trigger.new);
        }
    }
}