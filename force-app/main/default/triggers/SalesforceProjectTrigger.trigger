trigger SalesforceProjectTrigger on Salesforce_Project__C (before insert,after insert, before update, after update){
    if (Trigger.isAfter && Trigger.isInsert) {
        //call future method
        SalesforceProjectTriggerHandler.updateDescriptionFuture(Trigger.newMap.keySet());
    }
    if(Trigger.isAfter && Trigger.isInsert){
        //call handler method to insert default salesforce ticket.
        SalesforceProjectTriggerHandler.createDefaultTicket(trigger.new);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        //call method to validate project completion
        //SalesforceProjectTriggerHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spStatusCompleted(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}

