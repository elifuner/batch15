trigger AccountTrigger on Account (before insert,after insert, before update,  after update, before delete, after delete, after undelete) {

   // Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.

   if(trigger.isAfter && trigger.isUpdate){
    AccountTriggerHandler.updateDescription(trigger.new,trigger.oldMap);
    // set<id> accIds = new set<id>();
    // for(account acc : trigger.new){
    //     if(acc.Description != trigger.oldMap.get(acc.id).Description){
    //         accIds.add(acc.id);
        }
    }
   






