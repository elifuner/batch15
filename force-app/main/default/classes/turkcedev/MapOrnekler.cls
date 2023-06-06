public class MapOrnekler {
    public static void sehirSicakliklari(){
        //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı liste olarak yazdırın.
        // 1. once Map'imizi olusturalim.
        map<string,list<decimal>> citiesOfHot= new map<string,list<decimal>>();
        list<decimal> istanbulOfHot=new list<decimal>{11.5, 17.4, 21.3, 15.5, 8.7, 22.2, 19.9};
        citiesOfHot.put('Istanbul',istanbulOfHot);
        list<decimal> rotterdamOfHot=new list<decimal>{10.5, 17.9, 21.1, 15.7, 8.0, 22.8, 19.0};
        citiesOfHot.put('Rotterdam',rotterdamOfHot);
        list<decimal> erzurumOfHot=new list<decimal>{1.6, 4.2, 8.1, 3.5, 8.7, 2.9, 9.9};
        citiesOfHot.put('Erzurum',erzurumOfHot);
        list<decimal> amsterdamOfHot=new list<decimal>{10.5, 11.4, 11.3, 13.5, 6.7, 12.2, 11.9};
        citiesOfHot.put('Amsterdam',amsterdamOfHot);
        list<decimal> nairobiOfHot=new list<decimal>{1.5, 7.4, 1.3, 5.5, 8.7, 2.2, 9.9};
        citiesOfHot.put('Nairobi',nairobiOfHot);

        system.debug('Map==> '+citiesOfHot);
        


        //2. sehir ve sicaklik ortalamasini icine alan ayri bir map olusturalim.
        map<string,decimal> mapOrtSicaklik=new map<string,decimal>();
        for(string city : citiesOfHot.keySet()){
            system.debug(city);
            system.debug(citiesOfHot.get(city));
            decimal sum=0;
            for(decimal item : citiesOfHot.get(city)){
            sum+=item;
            }
            decimal Average=sum/(citiesOfHot.get(city).size());
            mapOrtSicaklik.put(city,Average.setScale(1));



        }
        system.debug('Sicaklik ortalamalari '+mapOrtSicaklik);

        //3. 2 tane set liste string olusturalim.
        set<string> less10 =new Set<String>();
        set<string> more10 =new Set<String>();

        //4. 10 derecenin ustundekileri bir sete ,10 derecenin altindakileri diger sete ekleyelim.
        for(string city : mapOrtSicaklik.keySet()){
            if(mapOrtSicaklik.get(city)>10){
                more10.add(city);
            }else {
                less10.add(city);
            }
        }

        //5. setleri yazdiralim.
        system.debug('10 derecenin altindaki sehirler '+ less10);
        system.debug('10 derecenin ustundeki sehirler '+ more10);


    }
    
}