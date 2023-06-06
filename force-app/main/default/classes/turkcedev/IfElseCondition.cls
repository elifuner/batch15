public class IfElseCondition {
    //integer bir parametre alan bir metot yazin.Bu metot gelen parametredeki sayinin pozitif mi negatif mi oldugunu biz donsun.
    public string positiveOrNegative(integer sayi){
        string sayiDurumu='';
        if(sayi>0){
            sayiDurumu='Positive';
        }else if(sayi<0){
            sayiDurumu='Negative';
        }else {
            sayiDurumu='Zero';
        }
        return sayiDurumu;

    }
    /*3 integer parameter alan, bu notlarin ortalamasina gore
    0-24  => F
    25-44 => E
    45-54 => D
    55-69 => C
    70-84 => B
    85-100 => A sonuclarini dondursun..*/
    public string notOrtalamsi(integer not1,integer not2,integer not3){
        string gecerNot;
        // 1.asama not ortalamsini bulalim.
        decimal ortalama=(not1+not2+not3)/3;
        //2.asama if else lerle karsilastirma yapmak
        if(ortalama>=0 && ortalama<=100){
            if(ortalama<25){
                gecerNot='F';
            }else if(ortalama<45){
                gecerNot='E';
            }else if(ortalama<55){
                gecerNot='D';
            }else if(ortalama<70){
                gecerNot='C';
            }else if(ortalama<85){
                gecerNot='B';
            }else if(ortalama<=100){
                gecerNot='A';
            }    
        }else{
            gecerNot='Hatali not girdiniz.Tekrar kontrol edin.';

        }
       
        return gecerNot;     
    }
   
}