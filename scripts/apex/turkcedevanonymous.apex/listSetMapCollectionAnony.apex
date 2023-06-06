list<string> kahramanlar=new list<string>{'super', 'bat', 'he', 'iron', 'spider', 'ant'};
list<string> list1=new List<string>();
list1=ListSetMapCollection.heros(kahramanlar);
system.debug('Yeni liste => '+ list1);

list<integer> sayilar=new list<integer>{22,16,44,5,36,99};
integer minSayi=ListSetMapCollection.minNumber(sayilar);
system.debug('en kucuk sayi => '+ minSayi);

list<integer> sayilar2=new list<integer>{22,16,44,5,36,99};
integer minSayi2=ListSetMapCollection.minNumber2(sayilar2);
system.debug('en kucuk sayi => '+ minSayi2);

list<integer> numbers=new list<integer>{22,45,11,7,8,35,72,33,44,67};
ListSetMapCollection.tekCiftSayiar(numbers);

