public class AggregateFunctions {
    
    /* 
     I-not working
//list<AggregateResult> ag=new List<AggregateResult>();
list<AggregateResult> ag=[select stageName,sum(Amount)sum1,Min(Amount)min1,Max(Amount)max1 from opportunity 
                    where stageName!='Closed won'];
string stageName=(string)ag.get('stageName');
decimal sum=(decimal)ag.get(sum1);
decimal max=(decimal)ag.get(max1);
decimal min=(decimal)ag.get(min1);
system.debug('sum is :'+sum);
system.debug('max is :'+max);
system.debug('min is :'+min);



working
-II-taking a list of aggregate result type and grouping the aggregate functions for each group & to print


List<AggregateResult> result=[select stageName,sum(Amount)sum1,Min(Amount)min1,Max(Amount)max1 from 
                             opportunity group by stageName];
for(AggregateResult ag:result){
    string stageName=(string)ag.get('stageName');
    decimal sum=(decimal)ag.get('sum1');
    decimal max=(decimal)ag.get('max1');
    decimal min=(decimal)ag.get('min1');
    system.debug('====Group:'+stageName);
    system.debug('sum:'+sum);
     system.debug('min:'+min);
     system.debug('max:'+max);
     system.debug('========');
}



*/

}