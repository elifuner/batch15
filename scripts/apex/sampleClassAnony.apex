SampleClass.staticStr='Static string';
SampleClass.staticInt=0;

SampleClass s1=new SampleClass();
s1.int1=10;
s1.str1='A';
SampleClass.staticInt++;
s1.details();

SampleClass s2=new SampleClass();
s2.int1=20;
s2.str1='AB';
SampleClass.staticInt++;
s2.details();