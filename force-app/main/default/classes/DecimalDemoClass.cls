public class DecimalDemoClass {
    public void practice1() {
        decimal myMoney=554.89456123;

        decimal myMoney2=myMoney.setScale(2);
        system.debug(myMoney2);

        string myMoney2str=myMoney2.toplainString();
        system.debug(myMoney2str);

        decimal myMoney3=Decimal.valueOf(myMoney2str);
        system.debug(myMoney3);
        







    }
}