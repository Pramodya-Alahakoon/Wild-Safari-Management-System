package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



import DBconnection.DBConnection;

import feedback.feedback;



public class feedbackDBUtil {
	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String email){
		
			
			//validate
			try {
				
				con = DBConnection.getConnection();//create connection(connection inside try catch is checking errors in db connection)
				stmt = con.createStatement();
				
			
				String sql = "select * from feedback where email='"+email+"'";//sql query to select the suitable user and get details
				rs = stmt.executeQuery(sql);//run the sql query(Using exceptions in sql)
				
				if(rs.next()) {//check the username and password correct or wrong
					isSuccess = true;	
				}
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e){ //catch the error
				e.printStackTrace();//print the error
				
			}
			
			return isSuccess;
			
		}
	
	public static List<feedback> getFeedbackDetails2(String email){
		ArrayList<feedback> feedback = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from feedback where email='"+email+"'";//sql query to select the suitable user and get details
			rs = stmt.executeQuery(sql);//run the sql query
			
			while(rs.next()) {
				int feedbackid = rs.getInt(1);
				 String name = rs.getString(2);
				 String femail= rs.getString(3);
				 
				 String phone= rs.getString(4); 
				 String message= rs.getString(5);
				 String rating= rs.getString(6);
				 
				feedback cus = new feedback(feedbackid,name,femail,phone,message,rating);
				
				feedback.add(cus);
			}
			
			
		}
		catch(Exception e){
			
		}
		
		return feedback;
	
}
	//insert data
		public static boolean insertfeedback(String name, String email, String phone, String message, String rating)  {
			
			
			boolean isSuccess = false;
			
			
			try {//try the content inside block
				
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into feedback values (0,'"+name+"','"+email+"','"+phone+"','"+message+"','"+rating+"')";//sql query
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
		public static boolean updatefeedback(String feedbackid, String name, String email, String phone, String message, String rating) {//parameters are the variables in updateServlet class
			
			boolean isSuccess = false;
	try {
	    		
	    		con = DBConnection.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update feedback set name='"+name+"',email='"+email+"',phone='"+phone+"',message='"+message+"',rating='"+rating+"'"
	    				+ "where feedbackid='"+feedbackid+"'";
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
		public static List<feedback> getFeedbackDetails(String feedbackid){//list of student details
			
			int convertedID = Integer.parseInt(feedbackid);//convert string value into integer value
			
			ArrayList<feedback> cus = new ArrayList<>();
			
	try {
	    		stmt = con.createStatement();
	    		String sql = "select * from feedback where feedbackid='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int cid = rs.getInt(1);
					 String name = rs.getString(2);
					 String email= rs.getString(3);
					 
					 String phone= rs.getString(4); 
					 String message= rs.getString(5);
					 String rating= rs.getString(6);
					
	    			//pass the values to the object in a student class through a constructor
					feedback c = new feedback(cid,name,email,phone,message,rating);//parameterize constructor
	    			cus.add(c);//pass the student object to arraylist object
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
			
			return cus;
		}
		
		//delete profile
		
		public static boolean deleteFeedback(String feedbackid) {
			
			int convId = Integer.parseInt(feedbackid);
			boolean isSuccess = false;
			    	
			    	try {
			    		
			    		con = DBConnection.getConnection();
			    		stmt = con.createStatement();
			    		String sql = "delete from feedback where feedbackid='"+convId+"'";
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
		// Method to get all feedback details
		 public static List<feedback> getfeedbackDetails() {
		        ArrayList<feedback> cus = new ArrayList<>();

		        try {
		            con = DBConnection.getConnection();  // Ensure DBConnection is properly set up
		            stmt = con.createStatement();
		            String sql = "SELECT * FROM feedback";
		            rs = stmt.executeQuery(sql);

		            while (rs.next()) {
		                int feedbackid = rs.getInt("feedbackid");
		                String name = rs.getString("name");
		                String email = rs.getString("email");
		                String phone = rs.getString("phone");
		                String message = rs.getString("message");
		                String rating = rs.getString("rating");

		                feedback fb = new feedback(feedbackid, name, email, phone, message, rating);
		                cus.add(fb);
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		            System.out.println("Database connection or query error!");
		        }
		        return cus;
		    }
	   
		 
}
