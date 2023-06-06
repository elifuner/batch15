public class Meyveler{
/*1.Parametredeki meyveye göre meyvenin fiyat bilgisini dönen bir parametreli method createedin.Switch statementini kullanın.
    Orange=0.59
    Apple=0.32
    Banana=0,48
    Cherry=3,00
    Mango=2.79
    Watermelon=6,89*/
    public string switchMethod(string meyve) {
        string result;
        switch on meyve {
            when 'Orange' {
                result = 'Oranges are $0.59.';
            }
            when 'Apple' {
                result = 'Apples are $0.32.';
            }
            when 'Banana' {
                result = 'Bananas are $0.48.';
            }
            when 'Cherry' {
                result = 'Cherries are $3.00.';
            }
            when 'Mango' {
                result = 'Mongoes are $2.79.';
            }
            when 'Watermelon' {
                result = ' Watermelon are $6.89.';
            }
            when else {
                result = 'Sorry, we are out of ' + meyve;
            }
        }
        return result;
    }
}