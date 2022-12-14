package com.HRmanager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StaffDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null ;
	private static Statement stmt = null ;
	private static Connection conn = null ;
	private static Statement stmt2 = null ;
	private static ResultSet rs = null ;
	
	
public static boolean insertsalary(int id, String first_name, String last_name, String email, String basic_sal, String ot_hours, String ot_rate, String salary) {
    	
    	boolean isSuccess = false;
    	double basicsal = Double.parseDouble(basic_sal);
		double oth = Double.parseDouble(ot_hours);
		double otr = Double.parseDouble(ot_rate);
		
		double salary1 = basicsal + (oth * otr);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into salary values (0,'"+first_name+"','"+last_name+"','"+email+"','"+basic_sal+"','"+ot_hours+"','"+ot_rate+"','"+salary1+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }


public static boolean updatesalary(String id, String first_name, String last_name, String email, String basic_sal, String ot_hours, String ot_rate) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update salary set first_name='"+first_name+"',last_name = '"+last_name+"',email='"+email+"',basic_sal='"+basic_sal+"',ot_hours='"+ot_hours+"',ot_rate='"+ot_rate+"'"
				+ "where id='"+id+"'";
		int rs = stmt.executeUpdate(sql);//
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
		double basicsal = Double.parseDouble(basic_sal);
		double oth = Double.parseDouble(ot_hours);
		double otr = Double.parseDouble(ot_rate);
		
		double salary = basicsal + (oth * otr);
		
		System.out.println("Salary");
		System.out.println(salary);//
		
		conn = DBConnect.getConnection();
		stmt2 = conn.createStatement();
		String sql1 = "update salary set salary = '"+salary+"' where id = '"+id+"'";
		int rs2 = stmt2.executeUpdate(sql1);
		if(rs > 0) {
			System.out.println("Salary addedd");
		}
		else {
			System.out.println("Salary not addedd");//
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}


public static List<Salary> getSalaryDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Salary> cus = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from salary where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String first_name = rs.getString(2);
			String last_name = rs.getString(3);
			String email = rs.getString(4);
			String basic_sal = rs.getString(5);
			String ot_hours = rs.getString(6);
			String ot_rate = rs.getString(7);
			
			Salary s = new Salary(id,first_name,last_name,email,basic_sal,ot_hours,ot_rate);
			cus.add(s);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return cus;	
}


public static boolean deleteSalary(String id) {
	
	int convId = Integer.parseInt(id);
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from salary where id='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
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
