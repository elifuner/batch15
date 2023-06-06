@isTest 
public class IfElseConditional2Test {
    @isTest
    private static void positiveOrNegativeTest() {
        IfElseConditional2 iec  = new IfElseConditional2();
        string msg = iec.positiveOrNegative(5);
        assert.areEqual('Positive', msg);
        string msg2 = iec.positiveOrNegative(-11);
        assert.areEqual('Negative', msg2);
        string msg3 = iec.positiveOrNegative(0);
        assert.areEqual('Sifir', msg3);
    }
    @isTest 
    private static void phoneTest() {
        IfElseConditional2 iec  = new IfElseConditional2();
        string msg1 = iec.phone('2123215476');
        assert.isNotNull(msg1);
        string msg2 = iec.phone('2163651476');
        assert.isNotNull(msg2);
        string msg3 = iec.phone('3123215476');
        assert.isNotNull(msg3);
        string msg4 = iec.phone('2125476');
        assert.isNotNull(msg4);
    }
}