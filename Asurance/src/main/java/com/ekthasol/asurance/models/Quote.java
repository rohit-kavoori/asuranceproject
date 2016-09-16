package com.ekthasol.asurance.models;

public class Quote {

	private String quoteID;
	private Double quoteAmount;
	private Double perMonth;
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
	public Quote(String quoteID, Double quoteAmount, Double perMonth) {
		super();
		this.quoteID = quoteID;
		this.quoteAmount = quoteAmount;
		this.perMonth = perMonth;
	}

	
}
