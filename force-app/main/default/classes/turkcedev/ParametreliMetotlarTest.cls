@isTest
public class ParametreliMetotlarTest {
    @isTest
    private static void printWelcomeTest() {
        ParametreliMetotlar pm = new ParametreliMetotlar();
        pm.printWelcome();
    }
    @isTest
    private static void welcomePersonTest(){
        ParametreliMetotlar pm = new ParametreliMetotlar();
        pm.welcomePerson('John');    
    }
    @isTest 
    private static void toplamaTest() {
        ParametreliMetotlar pm = new ParametreliMetotlar();
        integer toplam = pm.toplama(11, 22);
        assert.areEqual(33, toplam);    
    }
    @isTest 
    private static void artikyilTest() {
        ParametreliMetotlar pm = new ParametreliMetotlar();
        date dt = date.newInstance(2023, 5, 24);
        boolean result = pm.artikYil(dt);
        assert.isFalse(result);   
    }
    @isTest 
    private static void metin1Test() {
        ParametreliMetotlar pm = new ParametreliMetotlar();
        integer uzunluk = pm.metin1('all');
        assert.areEqual(3, uzunluk);
    }
}