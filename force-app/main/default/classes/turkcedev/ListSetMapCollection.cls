public class ListSetMapCollection {
    // {'super', 'bat', 'he', 'iron', 'spider', 'ant'} listenin her bir elemaninin sonuna 'man' ekleyin.. heman i he-man olarak yazsin
    public static list<string> heros(List<string> heroList) {
        list<string> updateHeroList=new list<string>();
        if(!heroList.isEmpty()){
            for(string eachHero: herolist){
                string addMan;
                if(eachHero=='he'){
                    addMan=eachHero +'-man';

                }else{
                    addMan=eachHero+'man';
                }
                updateHeroList.add(addMan);

            }
        }
        return updateHeroList;

    }
    //Parametre olarak integer bir list alan bir metot yazin. Bu metot listenin en kucuk elemanini donsun..
    public static integer minNumber(list<integer> sayiList){
        integer minNum;
        if(!sayiList.isEmpty()){
            minNum=sayiList.get(0);
            for (integer sayi : sayiList){
                if(sayi<minNum){
                    minNum=sayi;
                                    
                }
            }
        }
        return minNum;
    }  
    public static integer minNumber2(list<integer> sayiList){
        integer minNum;
        system.debug('ilk liste = '+ sayiList);
        sayiList.sort();
        system.debug('sort metodundan sonra list  = '+sayiList);
        minNum=sayiList.get(0);
        return minNum;
    }
    //Parametre olarak integer bir list alan bir metot yazin. Bu metot tek sayilari ayri bir listede, cift sayilari ayri bir listede toplasin ve yazdirsin..
    // sonra her listenin en kucuk elemanini bulsun.
    public static void tekCiftSayiar(list<integer> sayilar){
        list<integer> tekSayilar=new list<integer>();
        list<integer> ciftSayilar=new list<integer>();
        if(!sayilar.isEmpty()){
            for(integer sayi:sayilar){
                integer kalan=math.mod(sayi, 2);
                if(kalan==1){
                    tekSayilar.add(sayi);
                }else{
                    ciftSayilar.add(sayi);
                }
            }
            system.debug('tek sayilar => '+tekSayilar);
            system.debug('cift sayilar => '+ciftSayilar);

            integer tekMin=minNumber(tekSayilar);
            system.debug('en kucuk tek sayi => '+tekMin);

            integer ciftMin=minNumber(ciftSayilar);
            system.debug('en kucuk cift sayi => '+ciftMin);
                             
        
        }
    }

}