public class ParametreliMetotlar {
    public void printWelcome(){
        system.debug('Hosgeldiniz...');
    }

    public void welcomePerson(string isim){
        system.debug('Hosgeldiniz '+isim);

    }
    public integer toplama(integer a,integer b){
        Integer tplm=a+b;
        return tplm;
    }

    public boolean artikYil(date myDate){
        integer myYear=myDate.year();
        boolean sonuc=date.isLeapYear(myYear);
        return sonuc;
    }
    /* Parametre olarak bir string deger alan bir metot yazin.
    bu metot parametre olarak gonderilen stringin karakter uzunlugunu return etsin.*/
    public integer metin1(string metin){
        integer uzunluk=metin.length();
        return uzunluk;

    }
}