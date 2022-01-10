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
import com.bankapp.model.Loans;
import com.bankapp.model.UserDetails;

/**
 * Servlet implementation class PersonalLoan
 */
 @WebServlet("/Personal")
public class PersonalLoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonalLoan() {
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
		LoansDaoimpl loandao=new LoansDaoimpl();
		UserDetailsDaoimpl userdao=new UserDetailsDaoimpl();
		HttpSession session=request.getSession();
		String userName=(String)session.getAttribute("user_id");
		String pass=(String)session.getAttribute("pass");
		String emailId=(String) session.getAttribute("user_id");
	 	String type="Personal Loan";
	    String status="not approved";
		double amount=Double.parseDouble(request.getParameter("amountDeposit"));
		int period=Integer.parseInt(request.getParameter("period"));
		String pan= request.getParameter("pan");
		String Wtype=request.getParameter("Wtype");
		double rate_of_interest=0;
		int n=0;
	      
	     if(Wtype.matches("Tier-I")) {
	    	   n=1;
	        rate_of_interest  = loandao.getInterest(3.1);
	     }
	     else if(Wtype.matches("Tier-II")) {
	    	  n=1;
	    	 rate_of_interest=loandao.getInterest(3.2);
	     }
	     else if(Wtype.matches("Self Employee")) {
	    	 n=1;
	    	 rate_of_interest=loandao.getInterest(3.3);
	     }
	     else
	    	 System.out.println("invalid Period");
	      
	     double numberOfPayments=period*12;
	     double rt=(rate_of_interest/(12*100));
	     double r=Math.pow((1+rt), numberOfPayments);
	     double monthly_payment= Math.round(amount *rt*((r)/(r-1)));
	     long accNum=loandao.getAccNum(emailId);
		 boolean flag=loandao.validateLoan(accNum);
	     if(flag==false) {
		   loandao.PersonalLoan(type,amount,period,Wtype,rate_of_interest,monthly_payment,emailId,status,pan) ;
		   session.setAttribute("loan"," Loan Requested");
		   response.sendRedirect("PersonalLoan.jsp");
	     }
	     else
	     {
	    	 session.setAttribute("loan", "Oops!It seems already you have Loan from our bank...");
	    	 response.sendRedirect("PersonalLoan.jsp");
	     }
	}
	}


