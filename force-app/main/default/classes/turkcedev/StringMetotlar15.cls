public class StringMetotlar15 {
    /*string str='  sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM. ';
    String methodlari kullanarak str nin değerini-->
    'Salesforce ogreneceğim ve developer olacağim' şekline çevirin.*/

    public void cumleDuzenleme(){
        string cumle ='  sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM. ';
        System.debug(cumle); //   sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM. 
        System.debug('cumle = ' + cumle.length());
        //1. asama soldan ve sagdan bosluklari alalim.. trim() metoduyla
        string cumle2 = cumle.trim(); //sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM.
        System.debug(cumle2);
        System.debug('cumle2 = ' + cumle2.length());
        //2. asama cumlenin tum harflerini kucuk harf yapalim.. toLowerCase()
        string cumle3 = cumle2.toLowerCase();//salesforce ogreneceğim ve developerxyz1 olacagim.
        System.debug(cumle3);
        //3. asama cumlenin ilk harfini buyuk yapalim.. capitalize()
        String cumle4 = cumle3.capitalize();//Salesforce ogreneceğim ve developerxyz1 olacagim.
        System.debug(cumle4);
        //4. asama cumlenin icinden xyz1 ifadesi cikaralim.. remove
        string sonCumle = cumle4.remove('xyz1');//Salesforce ogreneceğim ve developer olacagim.
        System.debug(sonCumle);
        // sonCumlenin icinde 'olacagim.' kelimesini cikarip yazabilir miyiz?
        string text = sonCumle.substringAfterLast(' ');//olacagim.
        System.debug(text);
    }

    //https://softinnovas394-dev-ed.develop.lightning.force.com/lightning/r/Account/0013x00002RYrs0AAD/view
    //Bu id yi cekip alan bir metot yazin.

    public void accountIdSelect(){
        string accUrl = 'https://softinnovas394-dev-ed.develop.lightning.force.com/lightning/r/Account/0013x00002RYrs0AAD/view';
        //1.yol /view silerim, sonra son / tan sonraki id yi substringAfterLast metoduyla alirim
        string accUrl2 = accUrl.remove('/view');
        System.debug(accUrl2);

        string accId = accUrl2.substringAfterLast('/');
        System.debug(accId);

        //2.yol ilk 0 sayisinin index numarasini bul o idexten itibaren 18 karakteri yaz
        integer indexNo = accUrl.indexOf('0');
        string accId2 = accUrl.substring(indexNo, indexNo+18);
        System.debug(accId2);

        //3. yol /view silip sonra length() metoduyla karakter uzunlugunu hesaplayalim.. sonra length-18 karakterden baslayip sonuna kadar yazdirabiliriz..

        //4. lastIndexOf metoduyla son / in idex nosunu buluruz -18 den baslatip bu index numarasina kadar alabiliriz..
    }

}