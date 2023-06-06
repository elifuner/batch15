trigger CaseTrigger on Case (before insert) {
    System.debug('before insert case trigger');
    CaseTriggerHandler.recordCount += trigger.size ;
    System.debug('number of records processed'+ CaseTriggerHandler.recordCount);


    //print total number of times trigger is executing.
    CaseTriggerHandler.triggerCount ++ ;
    System.debug('number of trigger executing ' + CaseTriggerHandler.triggerCount);
}