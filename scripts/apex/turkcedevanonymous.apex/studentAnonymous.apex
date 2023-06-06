Student st1=new Student();
st1.firstName='Mary';
st1.lastName='Doe';
st1.className='6E';
st1.language='English';
st1.art=true;
st1.sport=false;
st1.ingGrade=95;
st1.mathGrade=92;
st1.fenGrade=100;
system.debug('student 1=> '+st1);

Student st2=new Student();
st2.firstName='Meryem';
st2.lastName='Doga';
st2.className='6FenB';
st2.language='Turkce';
st2.art=true;
st2.sport=false;
st2.ingGrade=100;
st2.mathGrade=100;
st2.fenGrade=100;
system.debug('student 2=> '+st2);

Student st3=new Student('Lisa','Fire', 95);
system.debug('student => '+ st3);


Student st4=new Student('David','Fire', 100);
system.debug('student => '+ st4);


