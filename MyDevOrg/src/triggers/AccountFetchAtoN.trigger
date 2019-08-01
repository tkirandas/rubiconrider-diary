trigger AccountFetchAtoN on Account (before insert,before update) {
    user u=[select id from user where alias='rride' limit 1];
    set<string> set1= new set<string>{'a','b','c','d','e','f','g','h','i','j','k','l','m'};
        //   set<string> set2= new set<string>{'n','o','p','q','r','s','t','u','v','w','x','y','z'};
        for(Account a:Trigger.new){
            if(set1.contains(a.name.substring(0,1))){
                a.ownerID=userinfo.getUserId();
            }
            else{
                a.ownerId=u.id;
            }
        }
}