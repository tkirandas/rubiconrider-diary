public class ParkLocator {

    public static list<string> country(string contr)
    {
       ParkService.ParksImplPort parks = new ParkService.ParksImplPort();
        return parks.byCountry(contr) ;
    }
}