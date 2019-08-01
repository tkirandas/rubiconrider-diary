public class apexExample6{
    public string sectionTitle{set;get;}
    public string body{set;get;}
    public apexExample6(){
        sectionTitle='new student';
        body='This is new page';
    }
        public void callme(){
            sectionTitle='Oldstudent';
            body='This is old page';
        }
          
   }