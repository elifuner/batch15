trigger EmployeeTrigger on Employee__c (before insert,after insert, before update,after update) {
    if(trigger.isBefore){
        //call handler Here.
        EmployeeTriggerHandler.updateJoinDate(Trigger.new);
    }


}