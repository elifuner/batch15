IfElseCondition ifc=new IfElseCondition();
string durum1=ifc.positiveOrNegative(-111);
string durum2=ifc.positiveOrNegative(11);
string durum3=ifc.positiveOrNegative(0);

system.debug('Sayimiz= '+durum1);
system.debug('Sayimiz= '+durum2);
system.debug('Sayimiz= '+durum3);

IfElseCondition ifc2=new IfElseCondition();
string sonuc1=ifc2.notOrtalamasi(75, 95, 100);
system.debug('Gecer Not: '+sonuc1);
string sonuc2 = ifc2.notOrtalamasi(175, 95, 100);
System.debug('gecer not = ' + sonuc2);
