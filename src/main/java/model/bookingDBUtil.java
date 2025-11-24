package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import DBconnection.DBConnection;
import booking.booking;


public class bookingDBUtil {
	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validatebooking(String email){
			
			
			
			
			
			
			try {
				
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				
			
				String sql = "select * from booking where email='"+email+"' ";//sql query to select the suitable user and get details
				rs = stmt.executeQuery(sql);//run the sql query
				
				if(rs.next()) {//
					isSuccess = true;	
				}
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e){ 
				e.printStackTrace();
				
			}
			
			return isSuccess;
			
		}
	
	public static List<booking> getBookingDetails2(String email){
		ArrayList<booking> booking = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from booking where email='"+email+"'";//sql query to select the suitable user and get details
			rs = stmt.executeQuery(sql);//run the sql query
			
			while(rs.next()) {
				
				 int id = rs.getInt(1);
				 String safaripackage = rs.getString(2);
				 String packageDetails = rs.getString(3);
				 String date = rs.getString(4);
				 String venue= rs.getString(5);
				 
				 String name = rs.getString(6);
				 String eventemail= rs.getString(7);
				 String contact = rs.getString(8);
				 
				 String price = rs.getString(9);

				 
				 booking cus = new booking(id, safaripackage,packageDetails, date, venue, name, eventemail,contact,  price);
				
				 booking.add(cus);
			}
			
			
		}
		catch(Exception e){
			
		}
		
		return booking;
	
}
	//insert data
		public static boolean insertbooking( String safaripackage,String packageDetails, String date, String venue, String name, String email,String contact, String price)  {
			/*connect with database and insert data into database
		that saved in event servlet*/
			
			boolean isSuccess = false;
			
			
			try {//try the content inside block
				
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into booking values (0,'"+safaripackage+"','"+packageDetails+"','"+date+"',' "+venue+ "','"+name+"','"+email+"','"+contact+"','"+price+"')";//sql query
	    		int rs = stmt.executeUpdate(sql);//store executeUpdate value in integer variable
	    		//executeUpdate statement return 2 values as 0 and 1
	    		//if value 0 unsuccess and if value 1 Success
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {//catch if there is an error
	    		e.printStackTrace();//print that error
	    	}
			
			
			
			return isSuccess;	
			
		}
		
		//update data
				public static boolean updatebooking(String id, String safaripackage,String packageDetails, String venue, String date, String name, String email,String contact, String price) {//parameters are the variables in updatecustomerServlet class
					
					boolean isSuccess = false;
			try {
			    		
			    		con = DBConnection.getConnection();
			    		stmt = con.createStatement();
			    		String sql = "update booking set safaripackage='"+safaripackage+"',packageDetails='"+packageDetails+"',date='"+date+"',venue='"+venue+"',name='"+name+"',email='"+email+"',contact='"+contact+"',price='"+price+"'"
			    				+ "where id='"+id+"'";
			    		int rs = stmt.executeUpdate(sql);
			    		
			    		if(rs > 0) {
			    			isSuccess = true;//rs=1
			    		}
			    		else {
			    			isSuccess = false;//rs=0 
			    		}
			    		
			    	}
			    	catch(Exception e) {
			    		e.printStackTrace();
			    	}
					
					return isSuccess;	
					
				}
				//retrieve data
				public static List<booking> getBookingDetails(String id){//list of customer details
					
					int convertedID = Integer.parseInt(id);//convert string value into integer value
					
					ArrayList<booking> cus = new ArrayList<>();
					
			try {
			    		stmt = con.createStatement();
			    		String sql = "select * from booking where id='"+convertedID+"'";
			    		rs = stmt.executeQuery(sql);
			    		
			    		while(rs.next()) {
			    			 int eid = rs.getInt(1);
			    			 String safaripackage = rs.getString(2);
							 String packageDetails = rs.getString(3);
							 String date = rs.getString(4);
							 String venue= rs.getString(5);
							 String name = rs.getString(6);
							 String eventemail= rs.getString(7);
							 String contact = rs.getString(8);
							 
							 String price = rs.getString(9);
							
			    			//pass the values to the object in a Customer class through a constructor
							booking c = new booking(eid,safaripackage,packageDetails,  venue, date, name, eventemail,contact,  price);//parameterize constructor
			    			cus.add(c);//pass the customer object to arraylist object
			    		}
			    		
			    	}
			    	catch(Exception e) {
			    		e.printStackTrace();
			    	}	
					
					return cus;
				}
				//delete profile
				
				public static boolean deletebooking(String id) {
					
					int convId = Integer.parseInt(id);
					boolean isSuccess = false;
					    	
					    	try {
					    		
					    		con = DBConnection.getConnection();
					    		stmt = con.createStatement();
					    		String sql = "delete from booking where id='"+convId+"'";
					    		int r = stmt.executeUpdate(sql);//executeUpdate method is use for insert, update, delete
					    		
					    		if (r > 0) {
					    			isSuccess = true;
					    		}
					    		else {
					    			isSuccess = false;
					    		}
					    		
					    	}
					    	catch (Exception e) {
					    		e.printStackTrace();
					    	}
							
							
							return isSuccess;
						}
				
				public static List<booking> getbookingDetails() {
			        ArrayList<booking> cus = new ArrayList<>();

			        try {
			            con = DBConnection.getConnection();  // Ensure DBConnection is properly set up
			            stmt = con.createStatement();
			            String sql = "SELECT * FROM booking";
			            rs = stmt.executeQuery(sql);

			            while (rs.next()) {
			            	int eid = rs.getInt(1);
			    			 String safaripackage = rs.getString(2);
							 String packageDetails = rs.getString(3);
							 String date = rs.getString(4);
							 String venue= rs.getString(5);
							 String name = rs.getString(6);
							 String eventemail= rs.getString(7);
							 String contact = rs.getString(8);
							 
							 String price = rs.getString(9);

			                booking fb = new booking(eid,safaripackage,packageDetails,  venue, date, name, eventemail,contact,  price);
			                cus.add(fb);
			            }
			        } catch (Exception e) {
			            e.printStackTrace();
			            System.out.println("Database connection or query error!");
			        }
			        return cus;
			    }
				
}