public class DepartmentTriggerHandler {
    @future
    public static void createDefaultEmployee(set<id> depIds) {
        list<employee__c> listEmp = new list<employee__c>();
        for(id eachId : depIds){
            employee__c e = new employee__c(First_Name__c = 'Richard', last_Name__c = 'Milles', Department__c = eachId,JoinDate__c = date.today());
            listEmp.add(e);
        }
        insert listEmp;

        
    }
}