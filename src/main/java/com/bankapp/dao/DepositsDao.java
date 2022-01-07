package com.bankapp.dao;

import java.util.List;

import com.bankapp.model.Deposits;

public interface DepositsDao {
	public double getInterest(double descriptionId);

	public boolean fixedDeposit(String type, double amount, double rate_of_interest, double maturity_value, int period,
			String status, int userId);

	public boolean recurringDeposit(String type, double amount, double rate_of_interest, int period, double maturity_value,
			String status, int userId);

	public List<Deposits> viewdeposit();

	public boolean updateStatus(long accnum);
	public List<Deposits> viewStatusUser(long accNo);
	
}
