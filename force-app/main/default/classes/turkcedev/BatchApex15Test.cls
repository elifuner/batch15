@isTest
public class BatchApex15Test {
    @testSetup
    static void makeData() {
        list<account> accList = new list<account>();
        for (Integer i = 0; i < 950; i++) {
            account acc = new account();
            acc.name = 'Account '+ i;
            accList.add(acc);    
        }
        insert accList;
        
    }
    @isTest 
    private static void BatchClassTest(){
        BatchApex15 b15 = new BatchApex15();
        test.startTest();
        Database.executeBatch(b15, 950);
        test.stopTest();

        list<account> updateList = [select id, name, annualRevenue from account];
        for(account acc : updateList){
            assert.isTrue(acc.name.contains('update'));
            assert.areEqual(10000, acc.AnnualRevenue);
        }

        list<contact> conList = [select id from contact];
        assert.areEqual(950, conList.size());
    }
}