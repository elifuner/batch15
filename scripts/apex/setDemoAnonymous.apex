SetDemo.citySet();
SetDemo.randomIntegerSet();

SetDemo.setFromList();

set<boolean> bs = new set<boolean>();
bs.add(true);
bs.add(false);
bs.add(null);
bs.add(true);
bs.add(false);
bs.add(null);
system.debug(bs);

SetDemo.upperCaseSet();

set<string> colors=new set<string>{'red','black','white','gray','green'};
set<string> colorsInCaps=SetDemo.upperCaseSet(colors);
system.debug(colorsInCaps);