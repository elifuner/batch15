public class Queueable15first implements Queueable{
    //Queueable1=>Accountlardan Annual Revenuesi 10000 olanlara birer contact create edip baglayalim.
    public list<account> accList = [select id, name from account where annualRevenue = 10000];
    public void execute(QueueableContext context){
        System.debug('Queueable first calisti.');
        list<contact> conList =new list <contact>();
        if(!accList.isEmpty()){
            for(account acc : accList){
                contact con = new contact();
                con.LastName ='Contact '+ accList.indexOf(acc);
                con.AccountId = acc.id;
                conList.add(con);
            }
            insert conList;
        }
        //system.enqueueJob(new Queueable15second());

    }
}