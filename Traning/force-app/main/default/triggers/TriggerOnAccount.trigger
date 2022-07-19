trigger TriggerOnAccount on Account (before insert) {
    
    if(trigger.isInsert && trigger.isBefore){
        AccountBillingAdrressUpdateTriggerHandler.updateShippingAddress(trigger.new);        
    }
}