public class Flowers {
    // 2tane class variables olsun.Cicek adi,adet
    string cicekAdi;
    integer adet;
    //cicekleri ve adetlerini key-value(cicekadi-adet)seklimde tutan bir map olsun.
    public static map<string,integer> cicekSepeti =new map<string,integer>();

    public Flowers(){

    }
    public Flowers(string cicekAdi,integer adet){
        this.cicekAdi=cicekAdi;
        this.adet=adet;
    }
    public void setCicekAdi(string cicekAdi){
        this.cicekAdi=cicekAdi;
    }
    public void setAdet(integer adet){
        this.adet=adet;
    }
    public string getCicekAdi(){
        return this.cicekAdi;
    }
    public integer getAdet(){
        return this.adet;
    }
    // public static bir addFloer metodu yazin.2 parametre alsin cicekadi ve adet olarak.
    //bu cicek benim mapimde var mi kontrolunu yapalim.
    //Varsa bu adeti onun ustune eklyecek yoksa yeni bir cicek olarak mape ekleyecek.
    public static void addFlower(string cicekAdi,integer adet){
        if(cicekAdi!=null){
            boolean isCheck=cicekSepeti.containsKey(cicekAdi);
            if(isCheck){
                integer newAdet=cicekSepeti.get(cicekAdi)+adet;
                cicekSepeti.put(cicekAdi,newAdet);

            }else {
                cicekSepeti.put(cicekAdi,adet);
            }

        }else{
            system.debug('Lutfen bir cicek adi girin.');
        }
    
    }
    // Public static bir salesFlower metodu yazin. 2 parametre alsin cicek adi ve adet olarak. bu cicek benim sepetimde varsa ve istenen sayida veya daha fazla ise bu satisi yapip adeti eksiltecek aksi durumlarda uygun uyari mesajlari verecek..
    public static void salesFlower(string cicekAdi, integer adet) {
        if (cicekAdi != null) {
            Boolean isCheck = cicekSepeti.containsKey(cicekAdi);
            if (isCheck) {
                if (cicekSepeti.get(cicekAdi)>=adet) {
                  integer newAdet =  cicekSepeti.get(cicekAdi) - adet;
                  cicekSepeti.put(cicekAdi, newAdet);
                } else {
                    System.debug(cicekAdi + ' ciceginden sepette '+ cicekSepeti.get(cicekAdi) + ' adet bulunmaktadir. Talebinizi buna gore duzenleyin..');
                }
            } else {
               System.debug('Elimizde bu cicek bulunmamaktadir..'); 
            }
        } else {
            System.debug('Lutfen bir cicek adi girin..');
        }
    }
    //stok kontrolu yapan bir static metot olsun burada her cicekten kac tane var ve toplam kac cicek var bunu gorelim..
    public static void stok() {
        if (!cicekSepeti.isEmpty()) {
            integer stok = 0;
            for(string cicek : cicekSepeti.keySet()){ 
                System.debug(cicek + ' ciceginden ' + cicekSepeti.get(cicek) + ' adet vardir.');
                stok += cicekSepeti.get(cicek);
            }
            System.debug('Elimizde toplam = ' + stok + ' adet cicek bulunmaktadir..');
        } else {
            System.debug('Sepette cicek bulunmamaktadir..');
        }
    }
}
