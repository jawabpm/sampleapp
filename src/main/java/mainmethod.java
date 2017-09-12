import java.util.Date;
class DateApp {
    public static void main(String args[]) {
		
		//Error 1
		String unused;
		
		//Correct code
        Date today = new Date();
        System.out.println(today);
		
		// Error 2
		try {
				// do something
		} catch (Throwable th) {  //Should not catch throwable
			th.printStackTrace();
		}
		
    }
}