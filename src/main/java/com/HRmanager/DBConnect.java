package com.HRmanager;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://us-cdbr-east-05.cleardb.net/heroku_6200d6ec36929ad";
	private static String userName = "b3a9d1f5e3f1fd";
	private static String password = "d67f51c0";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}

}
