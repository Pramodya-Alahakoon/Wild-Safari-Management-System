package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DBconnection.DBConnection;
import admin.guide;

public class guideDBUtil {
	private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    
    /**
     * Method to insert a new tour guide into the database.
     * 
     * @param firstname - First Name of the guide
     * @param lastname - Last Name of the guide
     * @param email - Email of the guide
     * @param phone - Phone number of the guide
     * @param experience - Experience in years
     * @param languages - Languages spoken by the guide
     * @param bio - Short bio of the guide
     * @return - True if insert is successful, false otherwise
     */
    public static boolean insertGuide(String firstname, String lastname, String email, String phone, int experience, String languages, String bio) {
        boolean isSuccess = false;
        
        try {
            // Establish connection
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // SQL Query to insert new guide
            String sql = "INSERT INTO guides (firstname, lastname, email, phone, experience, languages, bio) "
                       + "VALUES ('" + firstname + "', '" + lastname + "', '" + email + "', '" + phone + "', '" + experience + "', '" + languages + "', '" + bio + "')";

            // Execute the query and check for success
            int result = stmt.executeUpdate(sql);
            
            if (result > 0) {
                isSuccess = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close connections
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        return isSuccess;
    }

    /**
     * Method to retrieve all guides from the database.
     * 
     * @return List of Guide objects
     */
    public static List<guide> getAllGuides() {
        List<guide> guides = new ArrayList<>();
        
        try {
            // Establish connection
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // SQL Query to retrieve all guides
            String sql = "SELECT * FROM guides";
            rs = stmt.executeQuery(sql);

            // Loop through the results and create Guide objects
            while (rs.next()) {
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                int experience = rs.getInt("experience");
                String languages = rs.getString("languages");
                String bio = rs.getString("bio");

                // Create a new Guide object and add it to the list
                guide guide = new guide(firstname, lastname, email, phone, experience, languages, bio);
                guides.add(guide);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close connections
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return guides;
    }

    // You can add more methods like update, delete, or search as needed.
}