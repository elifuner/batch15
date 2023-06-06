trigger ContactTrigger on Contact (before insert, before update, after insert, after update, before delete, after delete) {
    // Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse veya baska bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..
    if(trigger.isAfter){
        if(trigger.isInsert){
           ContactTriggerHandler.insertMetod(trigger.new);
        }
        if(trigger.isUpdate){
            ContactTriggerHandler.updateMetod(trigger.new , trigger.oldMap);
        }
        if(trigger.isDelete){
            ContactTriggerHandler.deleteMetod(trigger.old);
        }
    
    }
}