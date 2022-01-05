package com.bankapp.impl;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bankapp.dao.AccountDetailsDao;
import com.bankapp.dao.UserDetailsDao;
import com.bankapp.model.AccountDetails;
import com.bankapp.model.UserDetails;
import com.bankapp.util.ConnectionUtil;

public class AccountDetailsdaoimpl implements AccountDetailsDao {
	//AccountDetails account=new AccountDetails(, null, null, null, null, 0, null, 0, null, null, null, 0, 0);
	public void insertAccount(AccountDetails user)
	{
		String query="Insert into account_details ";
	}

	public List<AccountDetails> searchDetail(long accNumber,int pinNumber) {
		List<AccountDetails> list=new ArrayList<AccountDetails>();
		ConnectionUtil conUtil = new ConnectionUtil();
		
		String ValidateQuery="select * from ACCOUNT_DETAILS WHERE  ACCOUNT_NUMBER='"+accNumber+"' and PIN_NUMBER='"+ pinNumber+"'";
		 
		Connection con = conUtil.getDbConnection();
		AccountDetails accDetail=null;
		try {
			 Statement st=con.createStatement();
				ResultSet rs=st.executeQuery(ValidateQuery);
				 
				if(rs.next())
				{
					accDetail=new AccountDetails ( rs.getInt(1),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),
							rs.getInt(7),rs.getString(8),rs.getLong(9),rs.getString(10),
							rs.getString(11),rs.getString(12),rs.getInt(13),rs.getInt(14) );
					list.add(accDetail);
				}
				 
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 
		}
		return  list; 
	}
	 
	public  void updateUserDetailAdmin(String email,long mobilenumber,String email1) {

		String updatequery1 = "update account_details set email=?,mobile_number=? where email=?";
		Connection con = ConnectionUtil.getDbConnection();

		try {
			PreparedStatement pstmt = con.prepareStatement(updatequery1);
			pstmt.setString(1,email1);
			pstmt.setLong(2,mobilenumber);
			pstmt.setString(3,email);
			int i = pstmt.executeUpdate();
			 
		} catch (SQLException e) {
			e.printStackTrace();
			 
		}
	}
	public void deleteDetails( long  accountnum) {
		String deleteQuery="update account_details set status='INACTIVE' where Account_number=?";
		Connection con=ConnectionUtil.getDbConnection();
		 try {
			PreparedStatement pst= con.prepareStatement(deleteQuery);
			pst.setLong(1,  accountnum);
			 pst.executeUpdate();
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String getUserId(String email)
	{
		String query = "select user_id from Account_Details where email = ?";
		Connection con=ConnectionUtil.getDbConnection();
		try {
			PreparedStatement pst= con.prepareStatement(query);
			pst.setString(1,  email);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				return rs.getString("user_id");
			}else {
				return null;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
