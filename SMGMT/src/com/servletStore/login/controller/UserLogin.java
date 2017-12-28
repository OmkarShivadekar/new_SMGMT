package com.servletStore.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servletStore.login.model.Encryption;
import com.servletStore.login.model.UserLoginDAO;
import com.servletStore.login.model.UserLoginImpl;
import com.servletStore.login.model.UserLoginPojo;

/**
 * Servlet implementation class UserLogin
 */
public class UserLogin extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String loginYear=request.getParameter("loginYear");
		
		Encryption enc= new Encryption();
		
		try {
			
			Boolean authenticate=enc.login(username, password);
			
			if(authenticate)
			{
				out.print("login successful "+loginYear);
			}
			else
			{
				out.print("login failed");
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*//redirecting
		if(request.getParameter("login")!=null) 
		{
			response.sendRedirect("/SMGMT/dashboard.jsp");
		}
		
		//ajax checking status of user
		if(request.getParameter("getStatus")!=null) 
		{
			UserLoginDAO uldao=new UserLoginImpl();
			String username=request.getParameter("username").trim();
			String password=request.getParameter("password").trim();
			UserLoginPojo ul=new UserLoginPojo();
			ul.setUsername(username);
			ul.setPassword(password);
			
			String status=uldao.getLoginStatus(ul);
			
			if(status.equals("noData")) {
				out.print("0");
			}
			else if(status.equals("wrongUser")) {
				out.print("2");
			}
			else if(status.equals("success")) {
				out.print("1");
			}
			
		}*/	
	}

}
