list<string> sehirler=new List<String>{'Istanbul','New York','Toronto','London','Amsterdam','New York'};
system.debug('sehirler => '+ sehirler);

Set<String> ulkeler =new set<String>{'Turkey','USA','Canada','Turkey','Nederland','Germany'};
system.debug('ulkeler => '+ ulkeler);

set<string> sehirlerset=new Set<String>();
sehirlerset.addAll(sehirler);
system.debug(sehirlerset);

//ogrenci numaralari key,ogrenci isimleri value olsun
map<integer,string> ogrenciMap=new map<integer,string>();
ogrenciMap.put(11,'John');
ogrenciMap.put(16, 'Lisa');
ogrenciMap.put(22,'Alperen');
ogrenciMap.put(25,'Fatma');
ogrenciMap.put(33, 'John');
ogrenciMap.put(16,'Mary');
system.debug('ogrenci map list => '+ogrenciMap);

set<integer> ogrenciNo=new set<integer>();
ogrenciNo=ogrenciMap.keySet();
system.debug('ogrenci nolari => '+ogrenciNo);
list<string> isimList=new list<string>();
isimList=ogrenciMap.values();
system.debug('ogrenci isimleri => '+ isimList);

