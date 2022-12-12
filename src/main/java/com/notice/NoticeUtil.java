package com.notice;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;  


public class NoticeUtil {
	
	private static boolean isSuccess;
	private static Connection conn=null;
	private static Statement state =null;
	private static ResultSet rs=null;
	
	public static List<Notice> validate (String username,String password) {
		ArrayList<Notice> noti = new ArrayList<>();
		try {
			
			conn = DBConnect.getConnection();
			state=conn.createStatement();
			String sql = "select * from user where username = '" + username + "' and password = '" + password + "'";
			rs=state.executeQuery(sql);
			
			if(rs.next()) {
				int  noticeID= rs.getInt(1);
				String date = rs.getString(2);
				String description = rs.getString(3);
				
				
				Notice n = new Notice(noticeID,date,description);
				noti.add(n);
				
			}
			
		}catch(Exception X) {
			
			X.printStackTrace();
			
		}
		return noti;
	}
	
	
	public static boolean updateNotice(String noticeID,String date, String description) {
    	
    	try {
    		
    		conn = DBConnect.getConnection();
    		state = conn.createStatement();
    		String sql = "update notices set noticeID='"+noticeID+"', date='"+date+"', description = '"+description+"'";
    		int rs = state.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
	
	
	
	
	public static boolean insertNotice(String date , String description ) {
		
		boolean isSuccess = false;
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "insert into notices values (0,'"+date+"','"+description+"')";
			int rs = state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception X) {
			X.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	
	
	
	
	
	public static boolean deleteNotice(String noticeID) {
		
		//System.out.println(noticeID);
		//int noticeID1 = Integer.parseInt(noticeID1);
		
		System.out.println("In the db util");
		//System.out.println(noticeID1);
		
		try {
			System.out.println("hello");
			System.out.println("In the try");
			conn = DBConnect.getConnection();
			state=conn.createStatement();
			String sql = "delete from employee where employeeID = '" + noticeID + "'";
			int result = state.executeUpdate(sql);
			System.out.println(result);
			if(result > 0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception X) {
			
			X.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	

}
