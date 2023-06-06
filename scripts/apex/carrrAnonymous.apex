//invoke =execute=run=fire=called
//this will not work
    //when we have parameterized constroctors
    //and we do not have parameterless constructor
Carrr bmw=new Carrr();//new object or instance of a class
bmw.details();
//system.debug('---------');
//Carrr ford=new Carrr();
//ford.details();

Carrr bmw1=new Carrr('BMW X3');
bmw1.details();

Carrr ford=new carrr();
ford.details();



Carrr bmw2=new Carrr('BMW X3', 'ABC10001', 'Black', 2020, 450000.00);
//access class variable outside of the class
//dot operator
//we cannot access private variable outside of class
     //string carName2=bmw2.name;
     //string carnumber2=bmw.carNumber;
carrr ford2=new Carrr('Ford Mustang','abc1234','Red',2023,55000);

string ford2Name=ford2.name;
string ford2Color=ford2.color;
system.debug('ford 2 name and color are '+ford2Name+', '+ ford2Color);
system.debug('------------');
//can we update the value of variable?
ford2.name = 'Ford Focus';
ford2.color = 'Silver';
ford2.details();



