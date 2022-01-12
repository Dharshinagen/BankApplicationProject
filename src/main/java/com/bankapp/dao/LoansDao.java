package com.bankapp.dao;

import java.util.List;

import com.bankapp.model.Loans;

public interface LoansDao {

	public double getInterest(double descriptionId);

	public  long PersonalLoan(Loans loan);

	public boolean housingLoan(Loans loan);

	public List<Loans> viewloan();

	public boolean updateStatus(long accnum);
	public List<Loans> viewStatusUser(long accNo);

}
