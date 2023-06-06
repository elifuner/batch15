public class BatchApex15 implements Database.Batchable<sObject> ,Database.stateful{
//Batch=>Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 10000 yapılsın..
public integer recordSayisi = 0;
public integer scopSayisi = 0;
    public Database.QueryLocator start(Database.BatchableContext BC) {
        Database.QueryLocator q1 = Database.getQueryLocator([select id, name, annualRevenue from account]);
        return q1;
    }

    public void execute(Database.BatchableContext BC, List<Account> scope) {
        scopSayisi ++;
        recordSayisi += scope.size();
        list<account> updateAccounts = new list<account>();
        for(account acc : scope){
            acc.name += ' update';
            if(acc.AnnualRevenue == null){
                acc.AnnualRevenue = 10000;
            }
            updateAccounts.add(acc);
        }
        update updateAccounts;
    }

    public void finish(Database.BatchableContext BC) {
        system.enqueueJob(new Queueable15first());
        System.debug(('islemimiz '+ scopSayisi + ' defa execute edildi ve  '+recordSayisi + ' record ile islem yapildi'));
        System.debug('Islembasari ile gerceklesti');
    }

}