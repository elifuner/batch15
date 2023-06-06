public class ContactTriggerHandler {
    public static void insertMetod(list<contact> conTriggerNew) {
        set<id> accIds = new set<id>();
        for(Contact con : conTriggerNew){
            if(con.AccountId != null){
                accIds.add(con.AccountId);
            }
        }
        if(!accIds.isEmpty()){
            numberOfContacts(accIds);
        }
    }
    public static void updateMetod(list<contact> conTriggerNew, Map<id, contact> conTriggerOldMap) {

        set<id> accIds = new set<id>();
        for(Contact con : conTriggerNew){
            contact oldCon = conTriggerOldMap.get(con.id);
            if(con.AccountId !=oldCon.AccountId){
                accIds.add(con.AccountId);
                accIds.add(oldCon.AccountId);
            }
            if(!accIds.isEmpty()){
                numberOfContacts(accIds);
            }

        }
    }
    public static void deleteMetod(list<contact> conTriggerOld) {
        set<id> accIds = new set<id>();
        for(Contact con : conTriggerOld){
            if(con.AccountId != null){
            accIds.add(con.AccountId);
        }
        if(!accIds.isEmpty()){
            numberOfContacts(accIds);
        }
        }
        
    }
    
    public static void numberOfContacts(set<id> accIds){
        list<account> accList = [select id, Number_Of_Contacts__c, (select id from contacts) from account where id in : accIds];
        for(Account acc : accList){
             acc.Number_Of_Contacts__c = acc.contacts.size();
        }

            
    }
        
}