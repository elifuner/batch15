Flowers flower1=new Flowers();
flower1.setCicekAdi('Gul');
flower1.setAdet(3);
system.debug(flower1);
string cAd=flower1.getCicekAdi();
integer adt=flower1.getAdet();
Flowers.cicekSepeti.put(cAd,adt);
system.debug('flower1 => '+ flower1);
system.debug('Map => '+ Flowers.cicekSepeti);

Flowers flower2=new Flowers('Lale',4);
Flowers.cicekSepeti.put(flower2.getCicekAdi(),flower2.getAdet());
system.debug('flower2 => '+ flower2);
system.debug('Map => '+ Flowers.cicekSepeti);

//system.debug('========Ornek========');
//Flowers.cicekSepeti.put('Gul',2);

system.debug('======addFlower Metodu======');
Flowers.addFlower('Gul', 5);
Flowers.addFlower('Lale', 2);
Flowers.addFlower('Menekse', 3);
system.debug('Map => '+ Flowers.cicekSepeti);

System.debug('====== salesFlower metodu======');
Flowers.salesFlower('Gul', 3);
System.debug('Map => ' + Flowers.cicekSepeti);
Flowers.salesFlower('Lale', 8);
System.debug('Map => ' + Flowers.cicekSepeti);
Flowers.salesFlower('Orkide', 3);
System.debug('Map => ' + Flowers.cicekSepeti);

System.debug('======stok======');
Flowers.stok();




