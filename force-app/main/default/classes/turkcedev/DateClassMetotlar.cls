public class DateClassMetotlar {
    public void tarihOlusturma() {
        date date1 = date.newInstance(2022, 11, 22);
        system.debug(date1);
        Integer yil = 2001;
        Integer ay = 5;
        Integer gun = 11;
        date date2=date.newInstance(yil, ay, gun);
        system.debug(date2);

    }
    // ? yilinin ?.ayinin ?. gunundeyiz.Yeniyila ? gun var
    public void tarihMesaji(){
        Date buGun=Date.today();
        //1.asama yili cekelim.
        Integer buYil=buGun.year();

        //2.asama ayi cekelim.
        Integer buAy=buGun.month();

        //3.asama gunu cekelim.
        Integer gun=buGun.day();

        //4.asama bu tarihten yeni yila kadar kac gun var onu bulalim.
        date yeniYil=date.newInstance(2023, 12, 31);
        Integer kalanGunSayisi=buGun.daysBetween(yeniYil);

        //5.asama bu verileri bir stringde birlestirip yazdiralim.
        string mesaj=buyil + ' yilinin '+buAy+'. ayinin '+gun+'. gunundeyiz.Yeni yila '+kalanGunSayisi+' gun var.';
        system.debug(mesaj);

        //4. ve 5. asamalar icin 2.yol.
        integer kacinciGun=buGun.dayOfYear();
        integer kalanGunSayisi2=365-kacinciGun;
        string mesaj2=buyil + ' yilinin '+buAy+'. ayinin '+gun+'. gunundeyiz.Yeni yila '+kalanGunSayisi2+' gun var.';
        system.debug(mesaj2);
    }
}