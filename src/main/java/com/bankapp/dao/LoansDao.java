package com.bankapp.dao;

import java.util.List;

import com.bankapp.model.Loans;

public interface LoansDao {

	public double getInterest(double descriptionId);

	public void PersonalLoan(String type, double amount, double period, String type1, double interest_rate,
			double monthly_payments, int userid, String status);

	public void housingLoan(String type, double amount, double period, String type1, double interest_rate,
			double monthly_payments, int userid, String status);

	public List<Loans> viewloan();

	public void updateStatus(long accnum);

}
