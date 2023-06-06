list<case> listCase = new list<case>();
//we want to insert more than 200 cases in one DML
for (Integer i = 0; i < 205; i++) {
    case c =new case(subject = 'there is a bug', Description = 'resolve it man', Status='new',origin='Web');
    listCase.add(c);
    
}
insert listCase;