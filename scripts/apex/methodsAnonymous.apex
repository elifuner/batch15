MethodsDemo m1 = new MethodsDemo();
//m1.returnMessage('Jenny');//will this give me error? method works

//returnMessage is returning a string
    //so, we are assignment to a string variable called r1
string r1 = m1.returnMessage('Jenny');
system.debug(r1);

system.debug('-------------------');

string returnString = m1.returnMessage('Esra');
system.debug(returnString);




m1.newMessage('Hank');

string ssss = 'Yash';
m1.newMessage(ssss);

// m1.welcomeMessage();
// m1.samplePrintMessage('Hello hello');
