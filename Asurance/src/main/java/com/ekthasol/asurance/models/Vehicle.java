package com.ekthasol.asurance.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "vehicle")
public class Vehicle {

	@Id
	@Column(name = "vin")
	private String vin;
	public Vehicle() {
		
	}

	@Column(name = "year")
	private String year;
	@Column(name = "make")
	private String make;
	@Column(name = "model")
	private String model;
	private String isSelected;
	

	public String getIsSelected() {
		return isSelected;
	}

	public void setIsSelected(String isSelected) {
		this.isSelected = isSelected;
	}

	@Override
	public String toString() {
		return "Vehicle [vin=" + vin + ", year=" + year + ", make=" + make + ", model=" + model + ", isSelected="
				+ isSelected + ", vechicleAddress=" + vechicleAddress + "]";
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "a_id")
	private Address vechicleAddress;

	public Address getVechicleAddress() {
		return vechicleAddress;
	}

	public void setVechicleAddress(Address vechicleAddress) {
		this.vechicleAddress = vechicleAddress;
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

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}
}
