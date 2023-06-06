public class DummyDataCreation {
    public static void updateDescription() {
        list<opportunity> listOpp=[select id, description from opportunity where amount!=null order by amount desc limit 10];

        for(Opportunity eachOpp : listOpp){
            eachOpp.Description='This is one of the top 10 opportunities.Please work on this properly';

        }
        update listOpp;

        
    }
    public static list<opportunity> createOpportunities (id AccountId,integer n) {
        list<opportunity> listOpp=new List<Opportunity>() ;
        if(n<=0){
            System.debug('lease tell us how many opportunities needs to be created');
            return null;
        }
        Account acc=[select name, annualRevenue from account where id=:AccountId];
        for (Integer i = 0; i < n; i++) {
            opportunity opp=new Opportunity();
            opp.Name=acc.Name;
            opp.CloseDate=date.today().addYears(3);
            opp.StageName='Prospecting';
            if(acc.AnnualRevenue!=null){
            opp.Amount=acc.AnnualRevenue/n;
            }
            opp.AccountId=acc.id;
            //opp.account=accountid;
            listOpp.add(opp);   
        }
        insert listOpp;
        return listOpp;
        
    }
    //Find out all the Account which have no contacts attached to them. Add a contact for each one of them and update the last Name of contact with the Name field of account.
    
    public static void insertContacts() {
        list<account> listAcc2 = [select id,name from account where id not in (select accountid from contact ) ];
        list<contact>listCon=new list<contact>();
        for (account  acc : listAcc2) {
            contact con2=new contact();
            con2.LastName=acc.name;
            con2.AccountId=acc.id;
            listCon.add(con2);
    
        }
        insert listCon;        
    }

    //Delete all the opportunities with amount less than 20000 and status as closed lost.

    private static void deleteOpp() {
        
    }

}