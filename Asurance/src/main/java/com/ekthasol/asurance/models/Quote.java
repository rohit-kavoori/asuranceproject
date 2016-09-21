package com.ekthasol.asurance.models;

import java.util.List;

public class Quote {

	
	private String quoteId;
	private double quoteAmount;
	private double perMonth;
	private double liability;
	private String vin;
	private String vehicleMakeYear;
	private List<String> driverList;	
	private String ssn;
	private String education;
	public String getQuoteId() {
		return quoteId;
	}
	public void setQuoteId(String quoteId) {
		this.quoteId = quoteId;
	}
	public double getQuoteAmount() {
		return quoteAmount;
	}
	public void setQuoteAmount(double quoteAmount) {
		this.quoteAmount = quoteAmount;
	}
	public double getPerMonth() {
		return perMonth;
	}
	public void setPerMonth(double perMonth) {
		this.perMonth = perMonth;
	}
	public double getLiability() {
		return liability;
	}
	public void setLiability(double liability) {
		this.liability = liability;
	}
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public String getVehicleMakeYear() {
		return vehicleMakeYear;
	}
	public void setVehicleMakeYear(String vehicleMakeYear) {
		this.vehicleMakeYear = vehicleMakeYear;
	}
	public List<String> getDriverList() {
		return driverList;
	}
	public void setDriverList(List<String> driverList) {
		this.driverList = driverList;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	
	
	
}
