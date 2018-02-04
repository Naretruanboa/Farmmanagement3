package farm3.spring.myapp;


	import java.text.SimpleDateFormat;
	import java.util.Date;
	import org.joda.time.*;

	public class AgeTool {

	  public static String getAge(String dateStart,String dateStop) {

	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");


	try {
		Date d1 = format.parse(dateStart);
		Date d2 = format.parse(dateStop);

	    DateTime dt1 = new DateTime(d1);
	    DateTime dt2 = new DateTime(d2);
	    
	    Period period = new Period(dt1, dt2);
	    //period.getDays()
	    int aa = period.getDays(); 
	    int days = period.getWeeks()*7+aa; 
	    System.out.print(period.getYears() + " years, ");
	    System.out.print(period.getMonths() + " months, ");
	    String result ="";
	 if(period.getYears()==0&&period.getMonths()==0){
		 result = days+" วัน ";
	 }
	 else if(period.getYears()==0&&period.getMonths()!=0){
		 result =period.getMonths()+" เดือน "+ days+" วัน ";
	 }
	 else{
		 
	 
	    result = period.getYears()+" ปี " +period.getMonths()+" เดือน "+days+" วัน ";
	 }
	    return result;

	 } catch (Exception e) {
	    e.printStackTrace();
	 }
		return null;
	}

	}

