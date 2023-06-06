list<contact> listCon=new list<contact>();

contact c=new contact();
c.LastName='cnt trigger 3';
listCon.add(c);

system.debug('-------');

contact c1=new contact();
c1.LastName='cnt trigger 4';
listCon.add(c1);

insert listCon;

List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 5; i++) {
            account ac = new account();
            ac.Name = 'acc trigger bulk' + i;
           
        
            listAcc.add(ac);
        }
        insert listAcc;
        

        
        