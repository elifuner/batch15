// One TestClass Per class or trigger
// @isTest annotation is used to make our class as a test class.
@isTest
public class Calculator9Test {
    //create test method inside test class
       //Test method means we are write method to TEST a unit of our actual code
    //req for test method-public or private,static returns void and take no parameter
    @isTest
    public static void testMethod1() {
        Calculator9 c = new Calculator9();
        c.add(1.1, 8.5);
        
    }
    @isTest
    private static void testAddMethod() {
        Calculator9 c = new Calculator9();
        integer sum = c.add(5,5);
        //assertion
        system.assertEquals(10, sum);//old way -old code will have this
        Assert.areEqual(10, sum);//new way -- new code should have this assertion
    }
    @isTest
    private static void testAddMethod2() {
        Calculator9 c = new Calculator9();
        integer sum = c.add(5,5,5);
        //assertion
        system.assertEquals(15, sum);//old way -old code will have this
        Assert.areEqual(15, sum);//new way -- new code should have this assertion
    }
    @isTest 
    private static void testLeapYearCheck(){
        Calculator9 c = new Calculator9();
        boolean dt = c.leapYearCheck(date.today());
        Assert.areEqual(false,dt);
        Assert.isFalse(dt);
        system.Assert(!dt);
        
    }
}