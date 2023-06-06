Opportunity opp = new Opportunity();
opp.Name = 'Trigger opp';
opp.StageName = 'Prospecting';
opp.CloseDate = date.today().addDays(60);
insert opp;

opp.Name += ' update';
update opp;


list<account> accList = new list<account>();

account acc1 = new account();
acc1.Name='Toyota';
accList.add(acc1);

account acc2 = new account();
acc2.Name='Volvo';
accList.add(acc2);

insert accList;