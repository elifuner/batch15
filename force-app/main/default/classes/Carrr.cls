public class Carrr {
    //variables created directly inside class 
    //body are called Class Variables
    
    //IF we do not specify access modifier ,it is PRIVATE by default
    private string carNumber;
    public string name;
    public integer mfgYear;
    public string color;
    decimal price;
    
    //class variables are accessable in all methods of the class 

    public void details(){
        system.debug('car number is '+carNumber);
        system.debug('car name is '+name);
        system.debug('manufacturing is '+mfgYear);
        system.debug('color of carrr is '+color);
        system.debug('price is '+price);
        printCarAge();
        
    }
    //constructor is same as class name.
    //constructor does not return anything
    //contstructor which has no parameters are called parameterLESS constructor
    public Carrr(){

         //constructor code is called automatically when new instance is created

         //constructors are used a lot to assign class variables values by default.
         //constructors are also used to do same operation as soon as object is created
        system.debug('new car is created,constructor called automatically'); 
        mfgYear=2023;
    }
    private void printCarAge(){
        integer currentYear=date.today().year();
        system.debug('car age is '+(currentYear-mfgYear));
        //this is not visible.it will not work
    }

    public Carrr(string nm){
        // nm is parameter
        //name is class variable
        name=nm;
        mfgYear=2023;
    }
    public Carrr(string nm,string carnum,string clr,integer yr,decimal pc){
        name=nm;
        carNumber=carnum;
        color=clr;
        mfgYear=yr;
        price=pc;
        //automatically do some operation
        details();


    }
}
