public class Employee {
    string name;
    decimal salary;

    //using constructor we can set values
    // OR we can use set methods as shown below

    // setVariableName()----> set method
    public void setName(string name){
        this.name=name;
    }
    public string getName(){
        return this.name;
    }

    public void setSalary(decimal salary){
        if (salary >=8000 && salary<= 50000){
            this.salary=salary;
        }else {
            this.salary=0;
            system.debug('Salary not a valid range.Please be in limit buddy.');

        }
        
    }
    public decimal getSalary(){
        return this.salary;
    }

}