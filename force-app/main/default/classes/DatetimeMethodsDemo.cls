public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
      date todayDate=date.today();
                                         //year,month,date
      date elifBirthDate=date.newInstance(1978, 12, 28);

      integer ageInMonths=elifBirthDate.monthsBetween(todayDate);
      system.debug('Elif age in months is '+ageInMonths);

    }
    public void calculateAgeInDays(){
        date todayDate=date.today();
                                         //year,month,date
      date elifBirthDate=date.newInstance(1978, 12, 28);
      integer ageInDays=elifBirthDate.daysBetween(todayDate);
      system.debug('Elif age in days is '+ageInDays);
      
    }
    public void printSubscriptionEndDate(){
       date todayDate=date.today();
       date endDate=todayDate.addDays(1000);
       system.debug('subscription end date: '+endDate);
       //END date is today
       //subs was done for 1000 days
       //what is the start date?
       date newEndDate=date.today();
       date newStartDate=newEndDate.addDays(-1000);
       system.debug('new start date=> '+newStartDate);
       // to just get Year component from date
       integer newSDYear=newStartDate.year();

       integer newSDMonth=newStartDate.month();
       system.debug('year of new start date is '+newSDYear);
       system.debug('month of new start date is '+newSDMonth);

    }
    public void offerEndDateTime(){
        //current datetime
        datetime offerStart=datetime.now();

        datetime offerEnd=offerStart.addHours(51);
        system.debug('offer end datetime '+offerEnd);

    }

}