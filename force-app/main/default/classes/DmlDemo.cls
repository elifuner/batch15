public class DmlDemo {
    public static void dmlInsertDemo1() {
        //create one account record.

        //create new instance of account
        account acc = new account();
        acc.Name='Salesforce';
        acc.website='www.salesforce.com';

        //dml
        insert acc;
        System.debug('inserted acc: '+acc);        
    }

    public static void dmlInsertDemo01() {
        //create new instance
        Department__c d=new Department__c();

        //set field names
        d.Name__c='Human Resource';
        d.Short_Code__c='HR';

        //insert dml
        insert d;
        
    }
    public static void dmlInsertDemo02() {
        employee__c em= new employee__c();
        em.First_Name__c='Elif';
        em.Last_Name__c='Dev';
        em.Country__c='Nederland';
        em.JoinDate__c=Date.newInstance(2023, 01, 01);
        em.Email__c='edev@gmail.com';
        em.Salary__c=110000.00;

        insert em;
    }
     
        public static void dmlUpdateDemo1() {
             //create account
             account acc = new account();
             acc.Name = 'Softinnovas';
             system.debug('before insert DML: ' + acc);
             insert acc;
             system.debug('after insert DML: ' + acc);
     
             //we can update record if we have record id.
             acc.Name = 'Softinnovas INC.';
             acc.Website = 'www.softinnovas.com';
     
             //update statement
             update acc;
             system.debug('after update dml: ' + acc);
        }
        public static void dmlUpdateDemo2() {
            account acc = [select name from account order by createddate desc limit 1];
    
            acc.name = 'Softinnovas Inc.';
            //system.debug('website : ' + acc.Website);//NOt work.
            //acc.Website = 'www.sfinnovas.com';//YES.
            update acc;
       }
    
       //DON't DO THIS. NOT ALLOWED. Danger ahead. Illegal.
       public static void dmlInsertWrong() {
            //create related contact record.
            Contact c = new contact();
            c.lastname = 'Devil';
            c.accountid = '0013x00002SMe9SAAT';//this is NOT good practice.
            insert c;
       }
    
       public static void dmlInsertDemo3(){
            //soql to get acc record
            account acc = [select id, name from account order by createddate desc limit 1];
    
            contact c = new contact();
            c.lastname = 'Biden';
            //relationship
            c.accountid = acc.id; //get id from account record.
    
            //insert statement
            insert c;
       }
           
}
