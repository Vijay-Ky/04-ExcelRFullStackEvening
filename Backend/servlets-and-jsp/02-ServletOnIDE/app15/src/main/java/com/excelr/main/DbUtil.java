package com.excelr.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbUtil
{
	public static int save(String firstName, String lastName, String age, String address, String gender, String skill1,String skill2, String skill3, String skill4, String education)
	{
		int status = 0;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException ex)
		{
			ex.printStackTrace();
		}
		
		try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlets","root","admin"))
		{
			String sql = "INSERT INTO CANDIDATES(first_name, last_name, age, address, gender, c, cpp, java, angular, education) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			try(PreparedStatement pstmt = con.prepareStatement(sql))
			{
				pstmt.setString(1, firstName);
				pstmt.setString(2, lastName);
				pstmt.setInt(3, Integer.parseInt(age));
				pstmt.setString(4, address);
				pstmt.setString(5, gender);
				//for skills, we need to handle each checkbox individually
				
				pstmt.setInt(6, ((skill1 != null) && skill1.contains("C")) ? 1 : 0);
				pstmt.setInt(7, ((skill2 != null) && skill2.contains("CPP")) ? 1 : 0);
				pstmt.setInt(8, ((skill3 != null) && skill3.contains("JAVA")) ? 1 : 0);
				pstmt.setInt(9, ((skill4 != null) && skill4.contains("ANGULAR")) ? 1 : 0);
				
				pstmt.setString(10, education);
				
				 status = pstmt.executeUpdate();
			}
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		
		return status;
	}
}
