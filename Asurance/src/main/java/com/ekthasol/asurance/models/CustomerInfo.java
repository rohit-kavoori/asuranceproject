package com.ekthasol.asurance.models;

public class CustomerInfo {
	
	private String marital;
	private String education;
	private String employement;
	private String ssn;
	private String residence;
	private String moved;
	private String licensedStatus;
	private String emailPrimary;
	private String residents;
	private String claims;
	private String tickets;
	
	@Override
	public String toString() {
		return "CustomerInfo [marital=" + marital + ", education=" + education + ", employement=" + employement
				+ ", ssn=" + ssn + ", residence=" + residence + ", moved=" + moved + ", licensedStatus="
				+ licensedStatus + ", emailPrimary=" + emailPrimary + ", residents=" + residents + ", claims=" + claims
				+ ", tickets=" + tickets + "]";
	}
	public String getMarital() {
		return marital;
	}
	public void setMarital(String marital) {
		this.marital = marital;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getEmployement() {
		return employement;
	}
	public void setEmployement(String employement) {
		this.employement = employement;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getResidence() {
		return residence;
	}
	public void setResidence(String residence) {
		this.residence = residence;
	}
	public String getMoved() {
		return moved;
	}
	public void setMoved(String moved) {
		this.moved = moved;
	}
	public String getLicensedStatus() {
		return licensedStatus;
	}
	public void setLicensedStatus(String licensedStatus) {
		this.licensedStatus = licensedStatus;
	}
	public String getEmailPrimary() {
		return emailPrimary;
	}
	public void setEmailPrimary(String emailPrimary) {
		this.emailPrimary = emailPrimary;
	}
	public String getResidents() {
		return residents;
	}
	public void setResidents(String residents) {
		this.residents = residents;
	}
	public String getClaims() {
		return claims;
	}
	public void setClaims(String claims) {
		this.claims = claims;
	}
	public String getTickets() {
		return tickets;
	}
	public void setTickets(String tickets) {
		this.tickets = tickets;
	}
	
	
}
