Calculator calc = new Calculator();
date bd=date.newInstance(1978, 12, 28);
Boolean leapcheck2 =calc.leapYearCheck(bd);
system.debug(leapcheck2);

date dt=date.today();
Boolean leapcheck =calc.leapYearCheck(dt);
system.debug(leapcheck);

//calc.add(10,15);//add(integer a, integer b) --> it will automatically recognize from datatype

//calc.add(10.10,15.15);//add(decimal a, decimal b)

//integer x = calc.add(10,15,55);
//system.debug('x is ' + x);



