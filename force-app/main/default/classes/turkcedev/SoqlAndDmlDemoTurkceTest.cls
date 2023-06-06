@isTest
public class SoqlAndDmlDemoTurkceTest {
    @isTest 
    private static void gettAccWithOppTest() {
        list<account> accList = new list<account>();
        account acc1 = new account();
        acc1.name = 'Demo 1';
        accList.add(acc1);

        account acc2 = new account();
        acc2.name = 'Demo 2';
        accList.add(acc2);

        insert accList;

        List<Opportunity> oppList = new list<Opportunity>();
        for(account acc : accList){
            Opportunity opp = new Opportunity();
            opp.Name = acc.name + ' Opportinty';
            opp.CloseDate = date.today().addDays(30);
            opp.StageName = 'Prospecting';
            opp.AccountId = acc.id;
            oppList.add(opp);
        }
        insert oppList;
        test.startTest();
        integer accSys = SoqlAndDmlDemoTurkce.gettAccWithOpp();
        test.stopTest();
        assert.areEqual(2, accSys);
    }
    @isTest 
    private static void createAccountTest() {
        test.startTest();
        SoqlAndDmlDemoTurkce.createAccount('Softinnovas');
        test.stopTest();
        account acc = [select id, name from account limit 1];
        assert.areEqual('Softinnovas', acc.Name);
        list<contact> conList = [select id from contact];
        assert.isTrue(conList.size()> 0);
    }
}