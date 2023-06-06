@isTest 
public class DepartmentTriggerHandlerTest {
    @isTest 
    private static void testFuture1() {
        list<department__c> listDep = new list<department__c>{
            new Department__c(name__c= 'Test'),
            new Department__c(name__c= 'Trigger'),
            new Department__c(name__c= 'Soql'),
            new Department__c(name__c= 'Dml')
        };

        Test.startTest();
        // while inserting department,trigger will call future method,which inserts employee.
        insert listDep;
        Test.stopTest();

        //Assert
        list<Employee__C> listEmp = [select id, first_name__c from employee__c];
        for(employee__c e : listEmp){
            assert.areEqual('Richard', e.first_name__c);
        }
    }
}