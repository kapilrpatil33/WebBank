package com.kapil.customer;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity
@Table(name="cust_details")
@Component
public class Customer {
	
	@Id
	private int accNo;
	private String accName,accCity,accmob;
	private float accbal;
	public int getAccNo() {
		return accNo;
	}
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	public String getAccName() {
		return accName;
	}
	public void setAccName(String accName) {
		this.accName = accName;
	}
	public String getAccCity() {
		return accCity;
	}
	public void setAccCity(String accCity) {
		this.accCity = accCity;
	}
	public String getAccmob() {
		return accmob;
	}
	public void setAccmob(String accmob) {
		this.accmob = accmob;
	}
	public float getAccbal() {
		return accbal;
	}
	public void setAccbal(float accbal) {
		this.accbal = accbal;
	}
	@Override
	public String toString() {
		return "Customer [accNo=" + accNo + ", accName=" + accName + ", accCity=" + accCity + ", accmob=" + accmob
				+ ", accbal=" + accbal + "]";
	}
	public Customer() {
		super();
	}
	
	
	
	

}
