list<account> accList = [select id, name from account];
for(account acc : accList){
    if(acc.name.contains('update')){
        acc.name = acc.name.remove('update');
        acc.Name = 'acc ' + accList.indexOf(acc);
    }
}
    update accList;

    BatchApex15 b15 = new BatchApex15();
    Database.executeBatch(b15, 5);


    Queueable15first q15 = new Queueable15first();
    system.enqueueJob(q15);

    Queueable15first q16 = new Queueable15first();
    system.enqueueJob(q16);

    


