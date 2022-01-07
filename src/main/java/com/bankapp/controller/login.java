package com.bankapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bankapp.impl.UserDetailsDaoimpl;
import com.bankapp.model.UserDetails;

/**
 * Servlet implementation class login
 */
 @WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super(); 
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out=response.getWriter();
		
		String userId=request.getParameter("userId");
		String password=request.getParameter("pwd");
		UserDetailsDaoimpl userDetailDao=new  UserDetailsDaoimpl();
		HttpSession session=request.getSession();
		UserDetails ValidAdmin=userDetailDao.admin(userId,password);
		UserDetails validUser =userDetailDao.validateUser(userId,password);
		
//		 RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
//		   rd.forward(request, response);
		if (validUser != null)
		   {
			//user_id=validUser.getUser_id();
			// out.println("WELCOME\t" + validUser.getUser_name() + "!");
			// out.print("<a href='accountDetails.jsp'>View Account Details</a>");
			String name=validUser.getUser_name();
			
			session.setAttribute("user_id", userId);
			session.setAttribute("pass", password);
			session.setAttribute("username", name);
			 RequestDispatcher rd=request.getRequestDispatcher("CustomerDashBoard.jsp");
			   rd.forward(request, response);

			 
		   }
		 else if(ValidAdmin !=null) 
		 {
			 String admin= ValidAdmin.getUser_name() + " as Admin!" ;
			 session.setAttribute("adminname", admin);
			 RequestDispatcher rd=request.getRequestDispatcher("adminDashBoard.jsp");
			   rd.forward(request, response);


         }
		 else {
			// HttpSession session=request.getSession();
			 session.setAttribute("login","Invalid User");
			  response.sendRedirect("login.jsp");
			  
		 }
	}
}