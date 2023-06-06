public class ForLoopDemo {
    // print Hello 10 times
    public void print_Hello() {
        //traditional for loop Or for i loop
        for(integer i=1;i<=10;i++){
            system.debug('Hello');
        }
    }
    //0 to n-1
    public void print_N_Numbers(integer n){
        string printStr='';
        for(integer i=0;i<n;i++){
            //system.debug(i);
            printStr=printStr+i+',';
        }    
        system.debug(printStr);
    }
    public void print_N_Numbers2(integer n){
        string s='This';
        s += ' is a string.';
        for(integer i=0;i<n;i++){
            s += i;
            system.debug(s);
        }
        //system.debug(s);
    }
    public void print_N_Odd_numbers(integer startInt,integer endInt){
        for(integer i= startInt ; i<endInt ;i++){
            // print only if i is ODD.
            integer remainder=math.mod(i,2);
            if (remainder==1){
                system.debug(i);
            }
        }

    }
    public void forLoopExample(integer n){
        integer no=5;
        integer fact=1;
        for (integer i=1;i<=no;i++){
            fact *= i;
        }
        system.debug('Factorial of '+no+' is: '+fact);
    }

}