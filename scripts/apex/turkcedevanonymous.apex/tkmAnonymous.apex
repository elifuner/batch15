
TasKagitMakas ifc3 = new TasKagitMakas();
string result1 = ifc3.tkmOyunu('kagit', 'tas');
System.debug('kazanan => ' + result1);
string result2 = ifc3.tkmOyunu('makas', 'tas');
System.debug('kazanan => ' + result2);
string result22 = ifc3.tkmOyunu('makas', 'makas');
System.debug('kazanan => ' + result22);
string result3 = ifc3.tkmOyunu('tornavida', 'tas');
System.debug('kazanan => ' + result3);