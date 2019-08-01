public without sharing class MalliUserScenario
{
    public List<User> UserTemp = new List<User>();
    public id selected {set;get;}
    public list<Account> accs {set;get;}
    public MalliUserScenario()
    {
    }
    public List<SelectOption> UserList
    {
        get
        {
          UserTemp = [Select u.LastName, u.Id, u.FirstName, u.Email,alias From User u];
            UserList = new List<SelectOption>();
            for(User temp : UserTemp)
            {
               UserList.add(new SelectOption(temp.Id, temp.LastName));
            }
            return UserList;
        }
        set;
    }
    public void show(){
        accs=[select id,name from Account where Ownerid=:selected];
            
    }
    
}