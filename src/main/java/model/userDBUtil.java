package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



import DBconnection.DBConnection;
import login.login;

public class userDBUtil {
	public static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    private static String userType;

    public static boolean validate(String userName, String password) {
        try {
            con = DBConnection.getConnection(); // create connection
            stmt = con.createStatement();
            
            String sql = "SELECT * FROM user WHERE username='" + userName + "' AND password='" + password + "'";
            rs = stmt.executeQuery(sql);
            
            if (rs.next()) { // Check if username and password are valid
                isSuccess = true;
                userType = rs.getString("type"); // Get the user type
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace(); // Print any errors
        }
        
        return isSuccess;
    }
    
    public static String getUserType() {
        return userType;
    }
	
	public static List<login> getloginDetails2(String userName){
		ArrayList<login> login = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from user where username='"+userName+"'";//sql query to select the suitable user and get details
			rs = stmt.executeQuery(sql);//run the sql query
			
			while(rs.next()) {
				int iduser = rs.getInt(1);//if username and password valid take details of that customer to this class
				 String firstname = rs.getString(2);
				 String lastname = rs.getString(3);
				 String email= rs.getString(4);
				 String birthday =rs.getString(5);
				 String phone= rs.getString(6);
				 String type =rs.getString(7);
				 String username= rs.getString(8);
				 String userpassword= rs.getString(9);
				 
				login cus = new login(iduser,firstname,lastname,email,birthday,phone,type,username,userpassword);
				
				login.add(cus);
			}
			
			
		}
		catch(Exception e){
			
		}
		
		return login;
	
}
	public static List<login> getLoginDetailsById(int userID) {
	    ArrayList<login> loginDetails = new ArrayList<>();
	    
	    try {
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "SELECT * FROM user WHERE iduser=" + userID; // Use userID to select the user
	        rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {
	            int iduser = rs.getInt(1);
	            String firstname = rs.getString(2);
	            String lastname = rs.getString(3);
	            String email = rs.getString(4);
	            String birthday = rs.getString(5);
	            String phone = rs.getString(6);
	            String type = rs.getString(7);
	            String username = rs.getString(8);
	            String userpassword = rs.getString(9);
	            
	            login user = new login(iduser, firstname, lastname, email, birthday, phone, type, username, userpassword);
	            loginDetails.add(user);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return loginDetails;
	}
	// Update admin information in the database
	public static boolean updateadmin(int userID, String firstName, String lastName, String email, String birthday, String phone, String username, String password) {
	    boolean isSuccess = false;
	    Connection con = null;
	    PreparedStatement pstmt = null;

	    try {
	        // Establish connection
	        con = DBConnection.getConnection();

	        // SQL query to update user information
	        String sql = "UPDATE user SET firstname=?, lastname=?, email=?, birthday=?, contactno=?, username=?, password=? WHERE iduser=?";
	        pstmt = con.prepareStatement(sql);

	        // Set the parameters for the prepared statement
	        pstmt.setString(1, firstName);
	        pstmt.setString(2, lastName);
	        pstmt.setString(3, email);
	        pstmt.setString(4, birthday);
	        pstmt.setString(5, phone);
	        pstmt.setString(6, username);
	        pstmt.setString(7, password);
	        pstmt.setInt(8, userID); // Fixing the order here

	        // Execute the update
	        int rowsAffected = pstmt.executeUpdate();

	        // Check if the update was successful
	        if (rowsAffected > 0) {
	            isSuccess = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        // Close resources
	        try {
	            if (pstmt != null) pstmt.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    return isSuccess;
	}


    // Delete a admin from the database
    public static boolean deleteAdmin(int userID) {
        boolean isSuccess = false;
        Connection con = null;
        Statement stmt = null;

        try {
            // Establish connection
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // SQL query to delete a user
            String sql = "DELETE FROM user WHERE id=" + userID;

            // Execute the delete query
            int rowsAffected = stmt.executeUpdate(sql);

            // Check if the delete was successful
            if (rowsAffected > 0) {
                isSuccess = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }
    
    
    
    
    
    
  //insert data user
  		public static boolean insertuser(String firstname,String lastname, String email,String birthday, String phone,String type, String username, String password)  {
  			/*connect with database and insert data into database
  		that saved in customerinsert servlet*/
  			
  			boolean isSuccess = false;
  			
  			
  			try {//try the content inside block
  				
  				con = DBConnection.getConnection();
  				stmt = con.createStatement();
  				
  				String sql = "insert into user values (0,'"+firstname+"','"+lastname+"',' "+email+ "','"+birthday+"','"+phone+"','"+type+"','"+username+"','"+password+"')";//sql query
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
  	//retrieve data user
  			public static List<login> getUserDetails(String iduser){//list of customer details
  				
  				int convertedID = Integer.parseInt(iduser);//convert string value into integer value
  				
  				ArrayList<login> cus = new ArrayList<>();
  				
  		try {
  		    		stmt = con.createStatement();
  		    		String sql = "select * from user where iduser='"+convertedID+"'";
  		    		rs = stmt.executeQuery(sql);
  		    		
  		    		while(rs.next()) {
  		    			int id = rs.getInt(1);
  			            String firstname = rs.getString(2);
  			            String lastname = rs.getString(3);
  			            String email = rs.getString(4);
  			            String birthday = rs.getString(5);
  			            String phone = rs.getString(6);
  			            String type = rs.getString(7);
  			            String username = rs.getString(8);
  			            String userpassword = rs.getString(9);
  						
  		    			//pass the values to the object in a Customer class through a constructor
  						login c = new login(id, firstname, lastname, email, birthday, phone,type, username, userpassword);//parameterize constructor
  		    			cus.add(c);//pass the customer object to arraylist object
  		    		}
  		    		
  		    	}
  		    	catch(Exception e) {
  		    		e.printStackTrace();
  		    	}	
  				
  				return cus;
  			}
  			
  			
  			 public static boolean updateuser(String userID, String firstname, String lastname, String email, String birthday, String phone, String username, String password) {
  		        boolean isSuccess = false;
  		        Connection con = null;
  		        PreparedStatement pstmt = null;

  		        try {
  		            // Obtain a database connection
  		            con = DBConnection.getConnection();

  		            // SQL update query using prepared statement
  		            String sql = "UPDATE user SET firstname=?, lastname=?, email=?, birthday=?, contactno=?, username=?, password=? WHERE iduser=?";
  		            pstmt = con.prepareStatement(sql);
  		            pstmt.setString(1, firstname);
  		            pstmt.setString(2, lastname);
  		            pstmt.setString(3, email);
  		            pstmt.setString(4, birthday);
  		            pstmt.setString(5, phone);
  		            pstmt.setString(6, username);
  		            pstmt.setString(7, password);
  		            pstmt.setString(8, userID);

  		            // Execute the update
  		            int rows = pstmt.executeUpdate();
  		            isSuccess = (rows > 0);
  		        } catch (Exception e) {
  		            e.printStackTrace();
  		        } finally {
  		            try {
  		                if (pstmt != null) pstmt.close();
  		                if (con != null) con.close();
  		            } catch (Exception e) {
  		                e.printStackTrace();
  		            }
  		        }

  		        return isSuccess;
  		    }
  			//delete profile
  			
  			public static boolean deleteuser(String iduser) {
  				
  				int convId = Integer.parseInt(iduser);
  				boolean isSuccess = false;
  				    	
  				    	try {
  				    		
  				    		con = DBConnection.getConnection();
  				    		stmt = con.createStatement();
  				    		String sql = "delete from user where iduser='"+convId+"'";
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
  			
  			
}
