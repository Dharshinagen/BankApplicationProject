package com.bankapp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bankapp.impl.LoansDaoimpl;
import com.bankapp.impl.UserDetailsDaoimpl;
import com.bankapp.model.UserDetails;

/**
 * Servlet implementation class HousingLoan
 */
@WebServlet("/House")
public class HousingLoan extends HttpServlet {
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		LoansDaoimpl loandao=new LoansDaoimpl();
		UserDetailsDaoimpl userdao=new UserDetailsDaoimpl();
		HttpSession session=request.getSession();
		String userName=(String)session.getAttribute("user_id");
		String pass=(String)session.getAttribute("pass");
		
		UserDetails validUser=userdao.validateUser(userName,pass );
		int user_id=validUser.getUser_id();
		String type="Housing Loan";
		   String status="not approved";
		double amount=Double.parseDouble(request.getParameter("amountDeposit"));
		int period=Integer.parseInt(request.getParameter("period"));
		 
		double numberOfPayments=period*12;
		 double  rate_of_interest=0;
		   rate_of_interest  = loandao.getInterest(3.3);
		       double rt=(rate_of_interest/(12*100));
		      
		  double    r=Math.pow((1+rt), numberOfPayments);
		     double  monthly_payment= Math.round(amount *rt*((r)/(r-1)));
		    // System.out.println(monthly_payment);
	 	    loandao.housingLoan(type,amount,period,type,rate_of_interest,monthly_payment,user_id,status);
		// HttpSession session=request.getSession();
		 session.setAttribute("Hloan"," Loan Requested");
		  response.sendRedirect("HousingLoan.jsp");
	}

}
