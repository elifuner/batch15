public class SoqlAndDmlDemoTurkce {
    //Opportunity 'si olan Accountlari getirip size 'ını return eden bir method yazın.
    public static integer gettAccWithOpp(){
       List<Opportunity> listOpp=[select id, name, AccountId from Opportunity where AccountId!= null];

       set<id> accIds =new set<id>();
       for(opportunity opp : listOpp){
        accIds.add(opp.AccountId);
       }

       list<account> listAcc= [select id, name from Account where id IN: accIds];
       System.debug(listAcc.size());
       return listAcc.size();
    }

    public static integer getAccWithOpp2() {
        list<account> listAcc = [select id, name from Account where id IN(select AccountId from Opportunity where AccountId !=null)];

        System.debug(listAcc.size());
        return listAcc.size();
        
    }

    public static void createAccount(string isim) {
        //name'i parametre olarak alan ve name ile Account create eden bir metot yazın

        account acc=new account();
        acc.Name = isim;

        insert acc ;

        //Bu accounta bir contact baglayin first name Demo last name Contact olsun.
        //contact con = new contact();
        //con.FirstName = 'Demo';
        //con.LastName = 'Contact';
        //con.AccountId = acc.id ;

        //insert con ;

        //aynı metot icinde o Accounta bağlı 5 tane de contact create etsin first name acoountun ismi olsun last name 'Contact' olsun ve 1 2 3 4 5 şeklinde sıralı isimlendirme olsun.

        list<contact> ListCon = new list<contact>();
        for (Integer i = 1; i <= 5; i++) {
            contact con = new Contact();
            con.firstName=isim;
            con.LastName='Contact '+ i;
            con.AccountId=acc.id;
            ListCon.add(con);           
        }

        insert ListCon; 
    }

    public static void highestAnnualRevenue() {
        
    
    //En buyuk AnnualRevenue si olan Accountu bulup Description a bugunun tarihini de ifade ederek bugun itibariyle en buyuk Annual Revenue ye sahip Account name = ….. AnnualRevenue = …….

         account acc = [select id, name, annualRevenue from account where AnnualRevenue != null order by AnnualRevenue desc limit 1];
         string message = date.today() + ' tarihi itibariyle '+ acc.Name + ' accountunun annuelRevenue si '+ acc.AnnualRevenue + ' tum accountlar icinde en buyuktur.';

         acc.Description=message;
         update acc ;
    }
}
