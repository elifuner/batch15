public class Decimal_Assignment {
    public void decimalMethods() {
        string s1='123.456789';
        Decimal d1=Decimal.valueOf(s1);
        Decimal d2=d1.setScale(2);

        system.debug(s1);
        system.debug(d1);
        system.debug(d2);

    }
}