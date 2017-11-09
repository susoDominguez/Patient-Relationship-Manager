package com.testdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestDBServlet
 */
@WebServlet("/TestDBServlet")
public class TestDBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//set up connection variables
		String user = "springtudent";
		String pwd = "springstudent";
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/web_customer_tracker?useSSL=false";
		String driver = "com.mysql.jdbc.Driver";
		
		//get connection to DBs
		
		try {

			PrintWriter out = response.getWriter();
			
			out.println("Connecting to DB: " + jdbcUrl);
			
			
			Class.forName(driver);
			
			Connection myConn = 
					DriverManager.getConnection(jdbcUrl, user, pwd);
			out.println("success");
			
			myConn.close();
		
		} catch (Exception e) {
			
			e.printStackTrace();
			throw new ServletException(e);
		}
	}

}
