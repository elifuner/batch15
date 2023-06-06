public  class ListDemo {
    public static void candidatesList(){
        List<string> listC = new list<string>();
        system.debug(listC);

        listC.add('Marc');
        listC.add('Bill');
        listC.add('Kunal');
        listC.add('Marc');
        system.debug('list of candidates ==> '+listC);
    }
    public static void randomIntegerList() {
        List<Integer> intList=new List<Integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        system.debug('int list ==> '+ intList);
        integer size= intList.size();
        system.debug('size of list is '+size);

        integer int3=intList.get(3);
        //OR
        integer int31=intList[3];

        system.debug('int 3 is ' +int3);
        system.debug('int 31 is ' +int31);
    }

    public static string candidatesList(integer i) {
        string returnValue='';
        List<string> listC = new list<string>();
        system.debug(listC);

        listC.add('Marc');
        listC.add('Bill');
        listC.add('Kunal');
        listC.add('Marc');
        system.debug('list of candidates ==> '+listC);
        //size 4
        //max index 3
        integer size=listC.size();
        if(i< size){
            returnvalue=listC.get(i);

        }else{
            returnValue='No such value exists';
        }

        

        return returnValue;
        
    }
}