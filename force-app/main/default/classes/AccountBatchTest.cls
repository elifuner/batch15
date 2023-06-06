@isTest
public class AccountBatchTest {
   
    @isTest 
    public static void testBatch1() {
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
        }
        insert listAcc;
        //for async apex,startest and stoptest are mandatory
        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab, 900);
        
        Test.stopTest();



        //Assert
        list<account> allAccounts = [select id, description from account];
        for(account acc : allAccounts){
            Assert.isTrue(acc.Description.containsIgnoreCase('batch'));
        }
        
    }

}