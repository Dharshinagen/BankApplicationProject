package com.bankapp.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.bankapp.dao.DepositsDao;
import com.bankapp.model.Deposits;
import com.bankapp.model.Loans;
import com.bankapp.util.ConnectionUtil;

public class DepositsDaoimpl implements DepositsDao {
	public double getInterest(double descriptionId) {
		String updatequery1 = "select INTEREST_RATE from ADMIN_USE where DESCRIPTION_ID=?";
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs = null;

		try {
			PreparedStatement pstmt = con.prepareStatement(updatequery1);

			pstmt.setDouble(1, descriptionId);
			rs = pstmt.executeQuery();
			if (rs.next())
				return rs.getDouble("INTEREST_RATE");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public boolean fixedDeposit(String type, double amount, double rate_of_interest, double maturity_value, int period,
			String status,String pan ,String email) {
		Connection con = ConnectionUtil.getDbConnection();
		boolean flag=false;
	//	String que = "select deposit_acc.nextval from dual";
		String que="select USER_ID,ACCOUNT_NUMBER FROM ACCOUNT_DETAILS WHERE EMAIL=? and ACC_TYPE='FixedDeposit'";
		String Query = "INSERT INTO DEPOSITS (ACCOUNT_NUMBER,USER_ID,DEPOSIT_TYPE,AMOUNT,TENURE_IN_YEARS,RATE_OF_INTEREST,MATURITY_DATE,MATURITY_VALUE,DEPOSIT_STATUS,PAN_NUMBER) VALUES(?,?,?,?,?,?,?,?,?,?)";
		LocalDate sysDate = LocalDate.now();
		Date mdate = Date.valueOf(sysDate.plusYears(period));
		long accNumber = 0;
		int userId=0;
		try {

			PreparedStatement pstmt = con.prepareStatement(que);
			pstmt.setString(1, email);
			System.out.println(email);
			pstmt.executeUpdate();
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				 userId=rs.getInt(1);
				 accNumber= rs.getLong(2);
				 System.out.println(userId +"ascc"+accNumber);
			}
			pstmt = con.prepareStatement(Query);
			pstmt.setLong(1, accNumber);
			pstmt.setInt(2, userId);
			pstmt.setString(3, type);
			pstmt.setDouble(4, amount);
			pstmt.setInt(5, period);
			pstmt.setDouble(6, rate_of_interest);
			pstmt.setDate(7, mdate);
			pstmt.setDouble(8, maturity_value);
			pstmt.setString(9, status);
			pstmt.setString(10,pan);
			System.out.println(type+" "+amount+" "+period+" "+rate_of_interest+" "+mdate+" "+maturity_value+" "+status+" "+pan);
			pstmt.executeUpdate();
           flag=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

	public boolean recurringDeposit(String type, double amount, double rate_of_interest, int period, double maturity_value,
		String status, String pan,String email) {
		Connection con = ConnectionUtil.getDbConnection();
		String que="select USER_ID,ACCOUNT_NUMBER FROM ACCOUNT_DETAILS WHERE EMAIL=? and ACC_TYPE='RecurringDeposit'" ;
		String Query = "INSERT INTO DEPOSITS (ACCOUNT_NUMBER,USER_ID,DEPOSIT_TYPE,AMOUNT,TENURE_IN_YEARS,RATE_OF_INTEREST,MATURITY_DATE,MATURITY_VALUE,DEPOSIT_STATUS,PAN_NUMBER) VALUES(?,?,?,?,?,?,?,?,?,?)";
		  boolean flag=false;
		LocalDate sysDate = LocalDate.now();
		Date mdate = Date.valueOf(sysDate.plusYears(period));
		long accNumber = 0;
		int userId=0;
		try {

			PreparedStatement pstmt = con.prepareStatement(que);
			pstmt.setString(1, email);
			System.out.println(email);
			pstmt.executeUpdate();
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				 userId=rs.getInt(1);
				 accNumber= rs.getLong(2);
				 System.out.println(userId +"ascc"+accNumber);
			}
			pstmt = con.prepareStatement(Query);
			pstmt.setLong(1, accNumber);
			pstmt.setInt(2, userId);
			
			pstmt.setString(3, type);
			pstmt.setDouble(4, amount);
			pstmt.setInt(5, period);
			pstmt.setDouble(6, rate_of_interest);
			pstmt.setDate(7, mdate);
			pstmt.setDouble(8, maturity_value);
			pstmt.setString(9, status);
			pstmt.setString(10,pan);
			pstmt.executeUpdate();
             flag=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  return flag;
	}

	public List<Deposits> viewdeposit() {
		List<Deposits> loans = new ArrayList<Deposits>();
		String view1 = "select * from Deposits  ";
		Connection con1 = ConnectionUtil.getDbConnection();
		try {
			Statement st = con1.createStatement();
			ResultSet rs = st.executeQuery(view1);
			while (rs.next()) {
				Deposits loan = new Deposits(rs.getInt(3), rs.getLong(2), rs.getString(4), rs.getDouble(5),
						rs.getString(6), rs.getInt(7), rs.getDouble(8), rs.getString(9), rs.getDouble(10),
						rs.getString(11));
				loans.add(loan);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return loans;
	}

	public  boolean updateStatus(long accnum) {
		String que = "UPDATE DEPOSITS SET DEPOSIT_STATUS='Approved' WHERE  Account_number=?";
		Connection con = ConnectionUtil.getDbConnection();
		boolean flag=false;
		try {
			PreparedStatement pst = con.prepareStatement(que);
			pst.setLong(1, accnum);
			int i = pst.executeUpdate();
			if(i>0) {
				flag=true;	
			}
             
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	public List<Deposits> viewStatusUser(long accNo) {
		List<Deposits> list = new ArrayList<Deposits>();
		String query="select Account_Number,Maturity_value,deposit_status from deposits where account_number='"+accNo+"'";
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs=null;
		try {
			Statement pst=con.createStatement();
			 
			   rs= pst.executeQuery(query);
				
				while(rs.next()) {
					Deposits dep=new Deposits( rs.getLong(1), rs.getDouble(2), rs.getString(3));
					list.add(dep);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}

}
