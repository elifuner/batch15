trigger AccountTrigger2 on Account (before delete,after delete) {
    
    // //isBefore will be true when trigger is running in BEFORE save(insert,upsert,delete)context
    // if(trigger.isBefore){
    //    System.debug('before update account trigger');
    // }
    // //isAfter will be true when trigger is running in AFTER save(insert,upsert,delete)context
    // if(trigger.isAfter){
    //     System.debug('after update account trigger');
    // }

     

//         if (Trigger.isBefore) {
//             system.debug('before delete trigger.new : ' + trigger.new);
//         }
//         if (Trigger.isAfter) {
//             system.debug('after delete trigger.new : ' + trigger.new);
//         }
}
