package com.login;

import java.sql.DriverManager;

import java.sql.Connection;

public class DBConnect {
	
	private static String url="jdbc:mysql://eu-cdbr-west-02.cleardb.net/heroku_e032fe1ffdce8a0";
	private static String username="bced159c45c427";
	private static String password="d52dbf7a";
	private static java.sql.Connection conn;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url,username,password);
			System.out.println("Database Conection is Successful!!");
		}
		catch(Exception e) {
			System.out.println("Database Conection is  Not Successful!!");
		}
		return conn;
	}

}
