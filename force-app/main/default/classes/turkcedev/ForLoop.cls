public class ForLoop {
    //1 den n e kadar sayilarin toplamini veren ve integer bir parametre alan bir metot yazin.
    public void sum(integer n) {
        integer toplam=0;
        for(integer i=1; i<=n; i++){
            system.debug('for dongusu '+i+' defa dondu.');
            toplam+=i;
            system.debug('ara toplam => '+ toplam);
        }
        system.debug('genel toplam=> '+ toplam);


    }
    //string bir parametre alan bir metot yazin. Bu metot stringin uzunlugu kadar yan yana Hello mesaji yazdirsin..
    public string hello(string text){
        // gelen parametrenin karakter uzunlugunu bulacagiz
        integer uzunluk=text.length();
        string message='';
        //bu uzunluk kadar bir for dongusu yazip mesaji olusturcagiz.

        for(integer c=0;c<=uzunluk;c++){
            message+=' hello '+ c;

        }
        return message;

    }


}
