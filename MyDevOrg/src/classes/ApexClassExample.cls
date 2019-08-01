public class ApexClassExample {
    public string sectionTitle{set;get;}
    public string pageBlockTitle{set;get;}
    public string subTitle{set;get;}
    public string help{set;get;}
    public string direction{set;get;}
    public string body{set;get;}
	
    public ApexClassExample(){
       pageBlockTitle='StudentExampl';
           sectionTitle='Apex';
           subTitle='kirak';
           help='/apex/page1';
           direction='LTR';
           body='Data Captured from ApexClassExample';
    }
}