public class TasKagitMakas {
     /*Tas kagit makas oyununu iki parametreli sekilde metot 1. Oyuncu kazandi, 2. Oyuncu kazandi veya berabere
             durum1   durum2  durum3 durum4  durum5 durum6
    player 1  tas      tas    kagit  kagit   makas   makas
    player 2  makas    kagit  makas  tas     tas     kagit
    kazanan   p1       p2     p2      p1     p2      p1 */
    public string tkmOyunu(string player1, string player2) {
        string kazanan;
        if ((player1 == 'tas' && player2 == 'makas') || (player1 == 'kagit' && player2 == 'tas') || (player1 == 'makas' && player2 == 'kagit')) {
            kazanan = 'Player 1';
        } else if ((player1 == 'tas' && player2 == 'kagit') || (player1 == 'kagit' && player2 == 'makas') || (player1 == 'makas' && player2 == 'tas')) {
            kazanan = 'Player 2';
        } else if ((player1 == 'tas' && player2 == 'tas') || (player1 == 'kagit' && player2 == 'kagit') || (player1 == 'makas' && player2 == 'makas')) {
            kazanan = 'beraberlik';
        } else {
            kazanan = 'hatali parametreler girdiniz. tekrar deneyin..';
        }
        return kazanan;
    }
}
