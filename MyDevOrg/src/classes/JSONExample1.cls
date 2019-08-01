public class JSONExample1 {
    public String result {set;get;}
    public string JSONExample1(){
       System.JSONGenerator gen=JSON.createGenerator(true);
       gen.writeStartObject();
       gen.writeFieldName('Emp Name');
       gen.writeString('Sravan');
       gen.writeStringField('Branch','SRNagar');
       gen.writeFieldName('Age');
       gen.writeNumber(40);
       gen.writeFieldName('DOB');
       gen.writeDate(System.today());
       gen.writeFieldName('Key');
       Blob body=Blob.valueOf('Satish');
       gen.writeBlob(body);
       gen.writeFieldName('Cities');
       gen.writeStartArray();
       gen.writeString('Hyd');
       gen.writeString('Ban');
       gen.writeEndArray();
       gen.writeFieldName('Account');
       Account a1=new Account(Name='Wipro',Phone='123');
       gen.writeObject(a1);
       Student4JSON s1=new Student4JSON('Hari',50);
       gen.writeObjectField('Std',s1);
       List<Student4JSON> stds=new List<Student4JSON>();
       Student4JSON s2=new Student4JSON('Ravi',20);
       Student4JSON s3=new Student4JSON('Kiran',40);
       stds.add(s2);
       stds.add(s3);
      gen.writeObjectField('Students',stds);
       gen.writeEndObject();
       result=gen.getAsString();
        system.debug('######RESULT######'+result);
    return result;
    }

}