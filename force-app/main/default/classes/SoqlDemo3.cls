public class SoqlDemo3 {
    //opportunity,we will get account name ,industry field.
    public static void oppAccQuery(){
        list<opportunity> lissOpp= [select id, name, amount, account.name, account.industry from opportunity where account.industry= 'energy'];
        for(opportunity eachOpp : lissOpp){
            System.debug('opp name is '+eachOpp.name + ', opp amount is '+eachOpp.Amount);
            System.debug('account name is '+eachOpp.Account.name+ ', industry is '+ eachOpp.Account.Industry);
            System.debug('---------');
        }
    }

    public static void accConnQuery() {
        list<account> listAcc = [select id, name, website, (select name, email from contacts) from account];
        //each account name
           //all its contact name and email
            //if no contact, no contact found

        for (account eachAcc : listAcc) {
            system.debug('each acc is ' + eachAcc.Name);
            list<contact> accContacts = eachAcc.Contacts;
            if (!accContacts.isEmpty()) {
                system.debug(eachAcc.Name + ' account has ' + accContacts.size() + ' contacts');
                for (contact eachContact : accContacts) {
                    system.debug('contact name is ' + eachContact.Name + ', email is ' + eachContact.Email );
                }
            } else {
                system.debug('*** NO contact found for this account ***');
            }
            

            system.debug('-----');
            
        }
    }

    //for each department we want to print number of employees, firstname, lastname and country of employee, total salary for each department, OVERALL TOTAL SALARY ALSO(optional).
    public static void deptmentDetails() {
        list<department__c> listDept = [SELECT Name__c, (SELECT first_name__c, last_name__c, country__c, salary__c FROM employees__r) FROM Department__c];

        decimal totalSalary = 0;
        for (department__c eachDept : listDept) {
            system.debug('dept name is ' + eachDept.name__c);
            List<Employee__c> listEmp = eachDept.Employees__r;

            decimal deptSalary = 0;

            for (employee__c eachEmp : listEmp) {
                system.debug('----- Name is ' + eachEmp.First_Name__c + ' ' + eachEmp.Last_Name__c + ', country is ' + eachEmp.Country__c );
                deptSalary += eachEmp.Salary__c;
                totalSalary += eachEmp.Salary__c;
                
            }
            system.debug('deptment total salary is ' + deptSalary);
            system.debug('----');
        }
        system.debug('overall total salary is ' + totalSalary);
    }

}

        
  
