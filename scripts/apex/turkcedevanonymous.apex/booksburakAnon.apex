List<BooksBurak> bookList = new List<BooksBurak>();

BooksBurak book1 = new BooksBurak();
book1.setKitapAdi('Safahat');
book1.setYazar('Mehmet Akif Ersoy');
book1.setFiyat(25);
book1.details();
bookList.add(book1);

System.debug('book1 => ' + book1);

//System.debug(book1.getKitapAdi());

BooksBurak book2 = new BooksBurak();
book2.setKitapAdi('Bu Ulke');
book2.setYazar('Cemil Meric');
book2.setFiyat(30);
book2.details();
bookList.add(book2);

System.debug('book2 => ' + book2);

BooksBurak.toplamKitapSayisi();

System.debug('book list => ' + bookList);

//listenin her bir kitabinin bilgilerini ayri ayri yazin..
System.debug('====kitaplar ayri ayri ======');
for (BooksBurak book : bookList) {
    System.debug(book);
    System.debug('Kitap adi : ' + book.getKitapAdi());
    System.debug('Yazar : ' + book.getYazar());
    System.debug('Fiyat : ' + book.getFiyat());
}