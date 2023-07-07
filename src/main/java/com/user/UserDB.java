package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDB {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	public static boolean validate(String userName, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where userName='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	public static List<User> getUser(String userName){
		
		ArrayList<User> us = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where userName='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getNString(3);
				String phoneNumber = rs.getString(4);
				String address = rs.getString(5);
				String userNameU = rs.getString(6);
				String passU = rs.getString(7);
				
				User u = new User(id, name, email, phoneNumber, address, userNameU, passU);
				us.add(u);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		return us;
	}
	
	public static boolean insertUser(String name, String email, String phoneNumber, String address, String userName, String password) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "insert into user values (0, '"+name+"','"+email+"','"+phoneNumber+"','"+address+"','"+userName+"','"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateUser(String id, String name, String email, String phoneNumber, String address, String userName, String password) {
		
        try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update user set name='"+name+"',email='"+email+"',phoneNumber='"+phoneNumber+"',address='"+address+"', userName='"+userName+"', password='"+password+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
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
	
	public static List<User> getUserDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<User> us = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getNString(3);
				String phoneNumber = rs.getString(4);
				String address = rs.getString(5);
				String userName = rs.getString(6);
				String password = rs.getString(7);
				
				User u = new User(id, name, email, phoneNumber, address, userName, password);
				us.add(u);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
		
	}
	
	public static boolean deleteUser(String Id) {
	    	
		int convertedID = Integer.parseInt(Id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from user where id='"+convertedID+"'";
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
