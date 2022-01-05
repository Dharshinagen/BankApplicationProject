package com.bankapp.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bankapp.dao.AdminUseDao;
import com.bankapp.model.AccountDetails;
import com.bankapp.model.AdminUse;
import com.bankapp.util.ConnectionUtil;

public class AdminUseDaoimpl implements AdminUseDao {
public void getDescriptionId(double desc_id,double rateOfInterest) {
	String query="update admin_use set INTEREST_RATE=? where DESCRIPTION_ID=?";
	Connection con = ConnectionUtil.getDbConnection();

	try {
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setDouble(1,rateOfInterest);
		pstmt.setDouble(2,desc_id);
		 
		int i = pstmt.executeUpdate();
		 
	} catch (SQLException e) {
		e.printStackTrace();
		 
	}
}
public List<AdminUse> allDetails() {
	List<AdminUse> list=new ArrayList<AdminUse>();
	ConnectionUtil conUtil = new ConnectionUtil();
	
	String ValidateQuery="select category_name,category_type,description,description_id,interest_rate from admin_use";
	 
	Connection con = conUtil.getDbConnection();
	 AdminUse adminuse=null;
	try {
		 Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(ValidateQuery);
			 
			while(rs.next())
			{
				adminuse =new AdminUse(rs.getString(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getDouble(5));
				list.add(adminuse);
			}
			 
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println("Statement Error");
	}
	
	return list;
}
 
}
	
