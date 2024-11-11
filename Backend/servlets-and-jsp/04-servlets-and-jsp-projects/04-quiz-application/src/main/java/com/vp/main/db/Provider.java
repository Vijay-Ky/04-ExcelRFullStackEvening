package com.vp.main.db;
import java.sql.*;
public class Provider {
    public static Connection getOracleConnection()
    {
        Connection con = null;
	try
        { 
            Class.forName("com.mysql.cj.jdbc.Driver");
            
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizapp","root","admin");
	    System.out.println("Connection successful!");
	}catch (Exception e) {System.out.println(e);}
    return con;
    }
}
	