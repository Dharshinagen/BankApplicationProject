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
 * Servlet implementation class TransacDate
 */
@WebServlet("/date")
public class TransacDate extends HttpServlet {
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String date=request.getParameter("date");
		TransactionDaoimpl transdao=new TransactionDaoimpl();
		transdao.getbyDate( date);
		HttpSession session=request.getSession();
		 session.setAttribute("Date",date);
				 
		 response.sendRedirect("TransactionDateView.jsp");
		
		
	}

}
