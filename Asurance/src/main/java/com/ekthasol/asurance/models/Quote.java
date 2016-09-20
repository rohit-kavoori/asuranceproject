package com.ekthasol.asurance.models;

import java.util.List;

public class Quote {

	
	private String quoteID;
	private Double quoteAmount;
	private Double perMonth;
	private Double liability;
	private String vin;
	private String year;
	private List<String> licenseList;	
	private String ssn;
	private String education;
	
	
	
	
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public List<String> getLicenseList() {
		return licenseList;
	}
	public void setLicenseList(List<String> licenseList) {
		this.licenseList = licenseList;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getQuoteID() {
		return quoteID;
	}
	public void setQuoteID(String quoteID) {
		this.quoteID = quoteID;
	}
	public Double getQuoteAmount() {
		return quoteAmount;
	}
	public void setQuoteAmount(Double quoteAmount) {
		this.quoteAmount = quoteAmount;
	}
	public Double getPerMonth() {
		return perMonth;
	}
	public void setPerMonth(Double perMonth) {
		this.perMonth = perMonth;
	}
	public Double getLiability() {
		return liability;
	}
	public void setLiability(Double liability) {
		this.liability = liability;
	}
		
}
