public class ListDemo2 {
    public static void iterateList() {
        list<integer> intList=new List<Integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);

        //5 x 90 = 450
        //
        
        system.debug(intList);
        //print each element one by one form the list
        //integer eachNumber==>integer because list is of integer
               // eachnumber is variable name we will use inside for loop
        for(integer eachNumber : intList){
            system.debug(eachNumber);
            System.debug(5+'*'+eachnumber+'='+(5*eachnumber));
        }
    } 

    public static integer add(List<Integer> l1){
        integer sum=0;
        system.debug(l1);
        for (integer  eachNum : l1) {
            sum+=eachNum;
            
        }

        return sum;
    }

    public static void iterateListString(list<string> l2){
        //print one by one element pass in l2 list<string>
        system.debug(l2);
        for(string eachString : l2){
            system.debug(eachString + ' - its length is '+eachString.length());
        }
    }
    public static string add(list<string> strList){
        string a=' ';
        for (string eachElement: strList){
             a+=eachElement+'||';
             system.debug(eachElement);
        }
        return a;
   
      }
      public static void iterateListString99(){
        list<string> ls=new list<string>{'list','set','map','array'};
        ls.add('methods');
        ls.add('constructor');

        list <string> newLS=new list<string>();

      //add each string - length in the same list
         //ex: list
          //    list - 4
          //    set
          //    set - 3
    //we can not modify(add or remove elements)  in the LIST we are using in FOR EACH LOOP     
        for (string eachStr : ls){
            string temp=eachStr + ' - '+ eachStr.length();
            newLS.add(eachStr);
            newLS.add(temp);
        }
        system.debug(newLS);
    }
}  