package com.bankapp.dao;

import java.sql.ResultSet;
import java.util.List;

import com.bankapp.model.AccountDetails;

public interface AccountDetailsDao {

	public List<AccountDetails> searchDetail(long accNumber,int pinNumber);
	public  void updateUserDetailAdmin(String email,long mobilenumber,String email1);
	public void deleteDetails( long  accountnum);
	public String getUserId(String email);
}
