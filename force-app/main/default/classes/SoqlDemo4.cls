public class SoqlDemo4 {
    public static void groupByQuery() {
        list<AggregateResult> result = [select country__c, count(id), sum(salary__c) from Employee__c group by Country__c];

        for(AggregateResult ar : result){
            System.debug(ar);
            System.debug('country name is '+ar.get('country__c'));
            System.debug('number of employees are '+ ar.get('expr0'));
            System.debug('total salary is '+ar.get('expr1'));
        }       
    }

    public static void accDynamicSOQL1(string accFieldName) {
        string query = 'select ';
        query += accFieldName;
        query += ' from account';

        System.debug('final query is:: '+ query);
        list<account> listAcc = database.query(query);
        for(account eachAcc : listAcc){
            System.debug(eachAcc);
        }

        
    }

}