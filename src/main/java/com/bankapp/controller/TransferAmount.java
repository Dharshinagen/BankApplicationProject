package com.bankapp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bankapp.impl.TransactionDaoimpl;

/** 
 * Servlet implementation class TransferAmount
 */
@WebServlet("/TransferAmount")
public class TransferAmount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransferAmount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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
		HttpSession session = request.getSession();
		String uname=request.getParameter("uname");
		 long accNo=Long.parseLong(request.getParameter("accno"));
		 double amount=Double.parseDouble(request.getParameter("amount"));
		 int pin=Integer.parseInt(request.getParameter("pin"));
		 long Accno=Long.parseLong(request.getParameter("RecAccNo"));
		 
		 TransactionDaoimpl transDao=new TransactionDaoimpl();
		 int pinnum=transDao.getPinnumber(accNo);
		 if(pin==pinnum) {
		 transDao.depositAmount(accNo, uname, amount, pin, Accno);
		 session.setAttribute("trans","TRANSFERRED");
		  response.sendRedirect("TransferAmount.jsp");
		 }
		 else {
		 
		 session.setAttribute("trans","Enter Correct Pin Number");
		  response.sendRedirect("TransferAmount.jsp");
		 }
//		 session.setAttribute("useraccno", accNo);
//		 session.setAttribute("username", uname);
//		 session.setAttribute("amount", amount);
//		 session.setAttribute("userpin", pin);
//		 session.setAttribute("Recaccno", Accno);
		  // response.sendRedirect(" Transfer.jsp");
		    
	}

}
