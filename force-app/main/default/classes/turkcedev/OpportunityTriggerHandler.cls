public class OpportunityTriggerHandler {
    public static void insertMetod(List<Opportunity> oppTriggerNew) {
        set< id> accIds = new set<id>();
        for(Opportunity opp : oppTriggerNew){
            if(opp.Amount != null && opp.accountId !=null){
                accIds.add(opp.AccountId);
            }
        }
        if(!accIds.isEmpty()){
            totalAmount(accIds);
        }
    }
    public static void updateMetod(list< opportunity> oppTriggerNew, Map<id,Opportunity> oppTriggerOldMap) {
        set<id> accIds = new Set<Id>();
        for (Opportunity opp : oppTriggerNew) {
            Opportunity oldOpp = oppTriggerOldMap.get(opp.id);
            if (opp.Amount != oldOpp.Amount || opp.AccountId != oldOpp.AccountId) {
                accIds.add(opp.AccountId);
                accIds.add(oldOpp.AccountId);
            }
        }
        if (!accIds.isEmpty()) {
            totalAmount(accIds);
        }
    }
    public static void deleteMetod(list<opportunity> oppTriggerOld) {
        set<id> accIds = new set<id>();
        for(Opportunity opp : oppTriggerOld){
            if(opp.Amount != null && opp.AccountId != null){
                accIds.add(opp.AccountId);

            }
        }
        if(!accIds.isEmpty()){
            totalAmount(accIds);
        }
        
    }
    public static void totalAmount(set<id> accIds)  {
        list<account> accList = [select id, description, (select id,amount from Opportunities where amount != null) from account where id in :accIds];
        for(account acc : accList){

            List<Opportunity> oppList = acc.Opportunities;
            decimal total =0 ;
            for(Opportunity opp : oppList){
                total += opp.Amount;
            }
            acc.Description = 'Bu accounta bagli tum opportunitylerin amountlarinin toplami '+ total;
        }
        update accList;
    }     
}