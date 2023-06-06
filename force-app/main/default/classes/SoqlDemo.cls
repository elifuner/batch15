public class SoqlDemo {
    public static void accountSOQL1(){
        list<account> listAcc =[select id, name, phone, website from account];
        System.debug(listAcc);
        list<contact> listCon =[select id, name, phone from contact];
        System.debug(listCon);
    }
    public static void accountSOQLOneR(){
        account acc=[select id, name, phone, website from account order by createddate desc limit 1];
        System.debug(acc);
        string accName=acc.Name;//fieldname. similar to accessing class variable
        System.debug('name of acc is '+accName);
        System.debug('website of acc is '+acc.Website);
    }
    public static void accountSOQL3(){
        list<account> listAcc=[select id, name, phone, accountnumber from account order by createddate desc];

        for(account eachAcc : listAcc){
            System.debug('Each account record is '+ eachAcc);
            string accName=eachAcc.Name;
            System.debug('account name is ' + accName);
            System.debug('account phone is ' + eachAcc.Phone);
            System.debug('accountnumber is ' + eachAcc.AccountNumber);
            System.debug('website is ' + eachAcc.Website);//we can get field value only if it is selected.
            System.debug('------------');
        }
    }
    public static void accountSOQLFilter(){
        list<account> listAcc1=[select id, name, website from account where name='Lux'];
        System.debug(listAcc1);       
    }
    public static void projectSoqlFilter(){
        list<salesforce_project__c> listSP=[select id, name, project_name__c, status__c, description__c from salesforce_project__c where status__c='new'];
        System.debug(listSP);
        System.debug('# of records => '+listSP.size());
    }
    public static void projectSoqlFilter(string status){
        list<salesforce_project__c> listSP=[select id, name, project_name__c, status__c, description__c from salesforce_project__c where status__c= :status];
        System.debug(listSP);
        System.debug('# of records => '+listSP.size());
    }
} 