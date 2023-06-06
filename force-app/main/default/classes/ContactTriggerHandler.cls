public class ContactTriggerHandler {
    //which all context variable we need here?
       //new,old or oldmap
    public static void validateContactUpdate1(
        List<Contact> cTriggerNew,
        List<Contact> cTriggerOld, 
        Map<id,contact> cTriggerNewMap, 
        Map<id,contact> cTriggerOldMap) {

            for(Contact newContact: cTriggerNew){
                //check if existing leadsource was partner referral.
                    //newContact.LeadSource can be partner referral. NO error there.
                        //BUT
                    //old contact's leadsource is Partner referral then throw error.
                    Contact oldContact = cTriggerOldMap.get(newContact.Id);
                    if(oldContact.LeadSource == 'Partner Referral'){
                        newContact.addError('Cannot update contact with lead source as Partner Referral');
                    }
            }
    }
    public static void validateContactUpdate2(
        List<Contact> cTriggerNew,
        List<Contact> cTriggerOld, 
        Map<id,contact> cTriggerNewMap, 
        Map<id,contact> cTriggerOldMap) {

            //do not allow user to update leadsource

            //for each for trigger.new
                //check if lead source is changed
                   // old contact lead source != new contact lead source
                      //add error
            for(contact newContact : cTriggerNew){
                if(newContact.LeadSource != cTriggerOldMap.get(newContact.id).LeadSource){
                    newContact.LeadSource.addError('Cannot update leadsource.Please user!Go away!');
                }
            }

        
            

     }
}