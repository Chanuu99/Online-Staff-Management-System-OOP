package com.login;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;

public class UserDBUtil {
	
	private static boolean isTrue;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	//login validate method
	public static boolean validate (String username, String password) {

		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select * from user where userName = '" + username + "' and password = '" + password + "'";
			rs = state.executeQuery(sql);
			
			if (rs.next()) {
				isTrue = true;
			}
			else {
				isTrue = false;
			}
			
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return isTrue;
	}
	
	//user insert method
	public static boolean insertUser(String fname , String lname , String email , String gender , String city , String phone , String dob , String status , String salary , String username , String password) {
		
		isTrue = false;
		
		try {
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "insert into user values (0 , '"+fname+"' , '"+lname+"' , '"+email+"' , '"+gender+"' , '"+city+"' , '"+phone+"' , '"+dob+"' , '"+status+"' , '"+salary+"' , '"+username+"' , '"+password+"')";
			int rs = state.executeUpdate(sql);
			
			if(rs > 0) {
				isTrue = true;
			}
			else {
				isTrue = false;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return isTrue;
	}
	
	//user delete method
	public static boolean deleteUser(String id) {
		
		isTrue = false;
		int userID = Integer.parseInt(id);
		
		try {
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "delete from user where userID = '"+userID+"'";
			int result = state.executeUpdate(sql);
			
			if(result > 0){
				isTrue=true;
			}
			else{
				isTrue=false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return isTrue;
	}
	
	//user update method
	public static boolean updateUser(String id , String fname , String lname , String email , String city , String phone , String status , String salary , String username , String password) {
		
		isTrue = false;
		
		try {
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "update user set fName = '"+fname+"' , lName = '"+lname+"' , email = '"+email+"' , city = '"+city+"' , phone = '"+phone+"' , status = '"+status+"' , salary = '"+salary+"' , userName = '"+username+"' , password = '"+password+"' where userID = '"+id+"'";
			int result = state.executeUpdate(sql);
			
			if(result > 0){
				isTrue=true;
			}
			else{
				isTrue=false;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return isTrue;
	}

}
