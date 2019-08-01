public class masthanUser1 {   
   //public list<User> names {set;get;}
   public List<SelectOption> objects{set;get;}
 
    
    List<User> names=[select name from User];
public List<User> getUsers(){
    // Here getting ALL users of the org
    // You may have to insert some WHERE clause to limit the list results
    return [Select FirstName, LastName, SmallPhotoUrl From User];
}

}