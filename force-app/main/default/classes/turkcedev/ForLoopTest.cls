@isTest
public class ForLoopTest {
    @isTest
   private static void sumTest() {
    Forloop fl = new ForLoop();
    fl.sum(5);
   }
   @isTest 
   private static void helloTest() {
    ForLoop fl = new ForLoop();
    string message = fl.hello('ali');
    assert.isNotNull(message);
    assert.areEqual('hello 1 hello 2 hello 3', message);
   }
}