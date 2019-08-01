public class dynamiCRON {
public static String GetCRONExpression(Datetime dt) {

   return ('' + dt.second() + ' ' + dt.minute() + ' ' + dt.hour() + ' ' + dt.day() + ' ' + dt.month() + ' ? ' + dt.year());

}
   // system.debug(dt);
}