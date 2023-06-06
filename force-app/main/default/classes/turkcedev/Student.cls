public class Student {
    /*Student adında bir class
   first name
   last name
   okulu(private)
   sınıfı
   ana dili
   sanat/spor tercihi
   ingilizce notu
   matematik notu
   fen bilgisi notu

   3 öğrenci objesi oluşturun..*/
   public string firstName;
   public string lastName;
   private string schoolName='Dream School';
   public string className;
   public string language;
   public boolean art;
   public boolean sport;
   public integer ingGrade;
   public integer mathGrade;
   public integer fenGrade;
   public Student(){
    system.debug('yeni bir ogrenci kaydi yapildi..hayirli olsun..');
   }

   public Student(string fName,string lName,integer ingNotu){
    this();
    this.firstName=fName;
    this.lastName=lName;
    this.ingGrade=ingNotu;
   }
}
