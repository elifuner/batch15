public class ExtraDers {
    /*public string dersadi;

    public ExtraDers(string dersAdi){
        this.dersAdi=dersAdi;

    }

    /*public ExtraDers(string dersAdi,Integer dersNo) {
        this.dersAdi=dersAdi;
        this.dersNo=dersNo;

    }*/
    //public integer yazdir(){
    
    //-------------------------------
    public void forloop(){

        for (integer i=0; i<4; i++){
            system.debug(i);          
        }
    
    //-----------------------------
        integer y=0;
        while(y<4){
          system.debug(y);
          y++;
        }
    }
    public integer extraMethod(integer a){
        integer toplam=0;
        for(integer b=0; b<=a; b++){
            toplam=toplam+b; 

        }
        return toplam;

       
    }
    // sadece cift sayilari toplayalim.
    public integer extraMethod2(integer a){
        integer toplam=0;
        for(integer b=0; b<=a; b++){
            if (isEven(b)){
            
             toplam=toplam+b;
            }

        }
        return toplam;

       
    }
    public boolean isEven(integer m){
        integer snc=math.mod(m,2);
        if (snc==0){
            return true;
        
        }
        return false;
    }
    public integer extraMethod3(integer a){
        integer toplam=0;
        for(integer b=0; b<=a; b++){

            integer snc=math.mod(b,2);
            if (snc==0){
            
             toplam=toplam+b;
            }

        }
        return toplam;

       
    }
    public integer extraMethod4(integer a){
        integer toplam=0;
        for(integer b=0; b<=a; b=b+2){
            toplam=toplam+b; 

        }
        return toplam;

       
    }

}