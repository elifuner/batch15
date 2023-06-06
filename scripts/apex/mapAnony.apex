//MapDemo.MapStringInteger();


//map of string,string
map<string,string> mapCC=new map<string,string>();
mapCC.put('USA','Dollar');
mapCC.put('France','Euro');
mapCC.put('Portugal','Euro');
mapCC.put('India','Rupees');
mapCC.put('India','Rupee');
mapCC.put('Turkiye','Lira');
mapCC.put('El Salvador','Bitcoin');
mapCC.put('usa','usd');
system.debug(mapCC);

//get value from map using KEY
string currUSA=mapCC.get('USA');
string currIndia=mapCC.get('India');
system.debug(currIndia);
string country='Turkiye';
string curr=mapCC.get(country);
system.debug(country + ' currency is '+curr);



set<string>allCountry=mapCC.keySet();
system.debug('all countries '+allCountry);

//get all the currencies from map
list<string> allCurrencies=mapCC.values();
system.debug('all currencies '+allCurrencies);


set<string> allCountries=mapCC.keySet();


for(string eachCountry : allCountries){
    system.debug('country is '+ eachCountry);
    string eachCurrency=mapCC.get(eachCountry);
    system.debug('currency is '+eachCurrency);
    system.debug('----');
}