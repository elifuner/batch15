trigger ContactTrigger on Contact (before insert,after insert,before update,after update) {
      


    if(trigger.isBefore && trigger.isUpdate){
        //Call handler here
        ContactTriggerHandler.validateContactUpdate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.validateContactUpdate2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

        //  //check if leadsource is partner referral
        //    //we have to check if old (trigger.old or oldMap) contact leadsource is partner referral then throw error.
        
        // //we can throw error using addError method.
        // //addError methods works on trigger.new only.
        // for(contact eachCon : trigger.new){
        //     //we want to get here old contact
        //     contact oldCon = trigger.oldMap.get(eachCon.id);
        //     if(oldCon.LeadSource == 'Partner Referral'){
        //         //throw error
        //         eachCon.addError('Cannot update contact if leadsource is partner referral');
        //     }
        // }




    // //trigger .isBefore is true when record reaches BEFORE trigger of timeline.

    // if(trigger.isBefore){
    //     System.debug('before trigger called.');
    //     if(trigger.isInsert){
    //         System.debug('before insert trigger called');
    //     }
    //     if(trigger.isUpdate){
    //         System.debug('before update trigger called');
    //     }
    // }

    // if(trigger.isAfter){
    //     System.debug('after trigger called.');
    //     if(trigger.isInsert){
    //         System.debug('after insert trigger called');
    //     }
    //     if(trigger.isUpdate){
    //         System.debug('after update trigger called');
    //     }
    // }

}