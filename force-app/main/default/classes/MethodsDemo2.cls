public class MethodsDemo2 {
    // create method,which accepts string,and checks if that string contains a or A.
    // return true if contains ,else false.
    public boolean nameContainsA(string name){
        boolean containsA=name.containsIgnoreCase('a');
        return containsA;
    }
}
