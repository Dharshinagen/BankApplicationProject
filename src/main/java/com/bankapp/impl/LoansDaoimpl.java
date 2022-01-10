package com.bankapp.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bankapp.dao.LoansDao;
import com.bankapp.model.Deposits;
import com.bankapp.model.Loans;
import com.bankapp.model.UserDetails;
import com.bankapp.util.ConnectionUtil;

public class LoansDaoimpl implements LoansDao {
	public    double getInterest(double descriptionId) {
		 String updatequery1 = "select INTEREST_RATE from ADMIN_USE where DESCRIPTION_ID=?";
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs = null;

		try {
			PreparedStatement pstmt = con.prepareStatement(updatequery1);
			 
			pstmt.setDouble(1,descriptionId);
			rs = pstmt.executeQuery();
			if(rs.next())
				return rs.getDouble("INTEREST_RATE");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	 }
	public  boolean PersonalLoan( String type,double amount,double period,String type1,double interest_rate,double monthly_payments, String email,String status ,String pan) {
	//	System.out.println(userid);
		String que="select user_id,account_number from account_details where  email=?";
		String query="INSERT INTO LOANS (USER_ID,ACCOUNT_NUMBER,LOAN_TYPE,DESCRIPTION,LOAN_AMOUNT,TENURE,INTEREST_RATE,MONTHLY_PAYMENT,LOAN_STATUS,PAN_NUMBER)VALUES(?,?,?,?,?,?,?,?,?,?)";
		Connection con = ConnectionUtil.getDbConnection();
		 long accNumber = 0;
		 boolean flag=false;
		 int userId=0;
			
		 try {
			 PreparedStatement pstmt =  con.prepareStatement(que);
			 pstmt.setString(1, email);
			 pstmt.executeUpdate();
				ResultSet rs = pstmt.executeQuery();
				//System.out.println(userid);
				System.out.println("ghsgdjhsg");
				if(rs.next()) {
					userId=rs.getInt(1);
					accNumber = rs.getLong(2);
				}
				System.out.println(accNumber);
			    pstmt = con.prepareStatement(query);		  
			    pstmt.setInt(1, userId);
				pstmt.setLong(2, accNumber);
				pstmt.setString(3,type);
				pstmt.setString(4,type1);
				pstmt.setDouble(5 ,amount);
				pstmt.setDouble(6,period);
				pstmt.setDouble(7, interest_rate );
				pstmt.setDouble(8,monthly_payments);
				pstmt.setString(9, status);
				pstmt.setString(10, pan);
			    pstmt.executeUpdate();
			 flag=true;
		 }catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 return flag;
		 
	}
	public  Long getAccNum(String email) {
		String query="select Account_number from account_details where email='"+email+"'";
		long accNum=0;
		 Connection con = ConnectionUtil.getDbConnection();
		 
		 try {
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(query);
			if(rs.next()) {
				accNum=rs.getLong(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return  accNum;
		
	}
	public boolean validateLoan(long accNo) {
	    String que="select  * from loans where account_number='"+accNo+"'";
	    Connection con = ConnectionUtil.getDbConnection();
	    boolean flag=true;
	    try {
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(que);
			 if(rs.next()) {
				 Loans loan=new Loans(rs.getInt(2),rs.getLong(3), rs.getString(5),rs.getString(6),rs.getDouble(7),rs.getString(8),rs.getDouble(9),rs.getDouble(10),rs.getString(11));
				  
			 }
			 else {
				 flag=false;
			 }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
		return flag;
	}
	public  boolean housingLoan( String type,double amount,double period,String type1,double interest_rate,double monthly_payments,String email,String status, String pan) {
		String que="select user_id,account_number from account_details where  email=?";
		String query="INSERT INTO LOANS (USER_ID,ACCOUNT_NUMBER,LOAN_TYPE,DESCRIPTION,LOAN_AMOUNT,TENURE,INTEREST_RATE,MONTHLY_PAYMENT,LOAN_STATUS,PAN_NUMBER)VALUES(?,?,?,?,?,?,?,?,?,?)";
		Connection con = ConnectionUtil.getDbConnection();
		 long accNumber = 0;
		 boolean flag=false;
		 int userid=0;
			
		 try {
			 PreparedStatement pstmt = con.prepareStatement(que);
			 pstmt.setString(1, email);
				ResultSet rs = pstmt.executeQuery();
				if(rs.next())
				{
					email=rs.getString(1);
					accNumber = rs.getLong(2);
					
				}
					
			 pstmt = con.prepareStatement(query);		  
			 pstmt.setInt(1, userid);
				pstmt.setLong(2, accNumber);
				pstmt.setString(3,type);
				pstmt.setString(4,type1);
				pstmt.setDouble(5 ,amount);
				pstmt.setDouble(6,period);
				pstmt.setDouble(7, interest_rate );
				pstmt.setDouble(8,monthly_payments);
				pstmt.setString(9, status);
				pstmt.setString(10,pan);
			    pstmt.executeUpdate();
			 flag=true;
		 }catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 return flag;
	}
	public List<Loans> viewloan(){
		List<Loans> loans=new ArrayList<Loans>();
		String view1="select * from LOANS  ";
		Connection con1=ConnectionUtil.getDbConnection();
		 try {
			Statement st=con1.createStatement();
			ResultSet rs=st.executeQuery(view1);
			while(rs.next()) {
				Loans loan=new Loans(rs.getInt(2),rs.getLong(3), rs.getString(5),rs.getString(6),rs.getDouble(7),rs.getString(8),rs.getDouble(9),rs.getDouble(10),rs.getString(11));
				loans.add(loan);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return loans;
	}
	public boolean updateStatus(long  accnum) {
		String que="UPDATE LOANS SET LOAN_STATUS='Approved' WHERE  Account_number=?";
		Connection con=ConnectionUtil.getDbConnection();
		boolean flag=false;
		 try {
			PreparedStatement pst = con.prepareStatement(que);
			pst.setLong(1,accnum);
			int i = pst.executeUpdate();
			flag=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return flag;
	}
	public List<Loans> viewStatusUser(long accNo) {
		List<Loans> list = new ArrayList<Loans>();
		String query="select Account_Number,Monthly_payment,loan_status from loans where account_number='"+accNo+"'";
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs=null;
		try {
			Statement pst=con.createStatement();
			 
			   rs= pst.executeQuery(query);
				
				while(rs.next()) {
					Loans dep=new Loans( rs.getLong(1), rs.getDouble(2), rs.getString(3));
					list.add(dep);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
	 

}
