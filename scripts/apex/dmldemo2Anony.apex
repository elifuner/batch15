DmlDemo2.accountUpdate();
DmlDemo2.insertRelatedRec2();
DmlDemo2.bulkInsertRight();
DmlDemo2.bulkUpdateRight();

string s1;//null
boolean b1=string.isBlank(s1);
system.debug(b1);

string s2='';
boolean b2=string.isBlank(s2);
system.debug(b2);

string s3=' ';
boolean b3=string.isBlank(s3);
system.debug(b3);

delete [select id from account where createddate=today limit 50];

undelete [select id from account where isdeleted=true ALL ROWS];

