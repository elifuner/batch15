public class AccountTriggerHandler {
    @future
    public static void futureCreateContacts(set<id> accIds) {
        List<Contact> conList = new List<Contact>();
        for (id accId : accIds) {
            contact con = new contact();
            con.LastName = 'Contact';
            con.AccountId = accId;
            conList.add(con);
        }
        insert conList;
    }

    // Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.
    public static void updateDescription(list<account> accNew, Map<id, account> accOldMap) {
        set<id> accIds = new set<id>();
        for(account acc : accNew){
            if(acc.Description != accOldMap.get(acc.id).Description){
                accIds.add(acc.id);
            }
  
        }
        if(!accIds.isEmpty()){
        futureDescriptionUpdate(accIds);
        }
    }  

    @future 
    public static void futureDescriptionUpdate(set<id> accIds) {
        //Bu accountlara bagli tum contactlari getirip description fieldlerini update ederiz
        list<Contact> conList = [select id, Description, account.Description from Contact where accountid = : accIds];
        list<Opportunity> oppList = [select id, Description, account.Description from Opportunity where accountid = : accIds];
        for(contact con : conList){
            con.Description = con.Account.Description;
        }
        update conList;
        //bu accountlara bagli tum opportunityleri getirip description fieldlerini update ederiz
        
        for(Opportunity opp : oppList){
            opp.Description = opp.Account.Description;
        }
        update oppList;
    }

}