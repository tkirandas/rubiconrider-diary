public class Movie {
    public integer available;
    public string movieName;
    public decimal cost;
    
    public Movie(string movieName){
        this.movieName=movieName;
        available=100;
        cost=250;
    }
    public void check(integer no){
        if(no<=available){
            system.debug('available');
        }
        else
            system.debug('Tickets not available');
        }
        public void bookTicket(integer no){
            
            //public void check(integer no){
                decimal bill;
       
            if(no<=available){
                available=available-no;
                bill=no*cost;
                system.debug('Pay amount:'+bill);
            }
           else
                 system.debug('Tickets sold out');
            }
            
}