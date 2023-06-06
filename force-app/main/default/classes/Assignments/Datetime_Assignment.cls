public class Datetime_Assignment {
    public void dateMethods() {
        Date varDate=Date.newInstance(2001, 1, 1);
        system.debug(varDate);
    }
    public void timeMethods(){
        Time varTime=Time.newInstance(06, 21, 29, 00);
        system.debug(varTime);
    }
    public void datetimeMethods(){
        Datetime varDatetime=Datetime.newInstance(2001, 1, 1, 18, 21, 29);
        system.debug(varDatetime);
    }
}