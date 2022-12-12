package com.notice;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url ="jdbc:mysql://eu-cdbr-west-02.cleardb.net/heroku_e032fe1ffdce8a0";
	private static String userName = "bced159c45c427";
	private static String password = "d52dbf7a";
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
