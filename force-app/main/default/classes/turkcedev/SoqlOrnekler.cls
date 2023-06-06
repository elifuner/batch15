public class SoqlOrnekler {
    public static void selectIndustry(string indstry){
        // industry si education olan accountlari getirelim.a)tek tek yazdiralim. b)nameleri tek tek yazdiralim.sonra bir parametre ile industrysini dinamik hale getirelim.

        //list<account> accList=[select id, name, industry from account where industry='Education'];
        System.debug('=====selectindustry metodu calisti==========');
        list<account> accList=[select id, name, industry from account where industry= :indstry];
        System.debug('Liste => '+accList);
        System.debug('record sayimiz=>'+accList.size());
        // a) tek tek yazdiralim
        System.debug('=======a)tek tek yazdiralim======');
        for(Account acc : accList){
            System.debug('account '+acc);
        }
        System.debug('=======b)nameleri ve industryleri yazdiralim=======');
        for(account acc : accList){
            System.debug('name=> '+acc.name);
            System.debug('industry => '+acc.Industry);
        }
    }
    public static void childToParent(){
        //contactlari bagli olduklari accountlarin name ve annualRevenueleri ile beraber getirelim.annualRevenue bos olanlar gelmesin.
        list<contact> conList = [select id, name, account.name, account.annualRevenue from contact where account.annualRevenue != null];
        for(contact con : conList){
            System.debug(con.Name + ' contactinin bagli oldugu accountin adi= '+con.Account.Name + ' ve bu accountun annualRevenue=> '+con.Account.AnnualRevenue);
            System.debug('===================');
        }
    }
    public static void parentToChild(){
        //en son create edilen 5 accountu bagli oldugu contactlari ile beraber getirelim.
        list<account> accList= [select id, name, createddate, (select id, name from contacts) from account order by createddate desc limit 5];
        //contacti olanlari contactlari ile beraber yazalim.contacti olmayanlari yazmayalim.
        for(account acc : accList){
            System.debug('========con===========');
            if(!acc.Contacts.isEmpty()){
            System.debug('name=> '+acc.name);
            System.debug('contactlar=> '+acc.contacts);
            System.debug('===============');
              for(contact con : acc.Contacts){
                  System.debug('contact name=> '+ con.name);
                }
            }
            System.debug('==========opp=======');
            System.debug('account name= '+acc.Name);
            System.debug('opportunity= '+ acc.Opportunities);
            for(Opportunity opp : acc.Opportunities){
               System.debug('opportunity name= '+ opp.name);
            }
        

        }
    }
}