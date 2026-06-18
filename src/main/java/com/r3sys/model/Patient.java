package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity
@Table(name = "patientDB")
@Component
public class Patient {
	@Id
	private long pContact;
	private String pName;
	private int pAge;
	private String pEmail;
	private String pPassword;
	public long getpContact() {
		return pContact;
	}
	public void setpContact(long pContact) {
		this.pContact = pContact;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getpAge() {
		return pAge;
	}
	public void setpAge(int pAge) {
		this.pAge = pAge;
	}
	public Patient(long pContact, String pName, int pAge, String pEmail, String pPassword) {
		super();
		this.pContact = pContact;
		this.pName = pName;
		this.pAge = pAge;
		this.pEmail = pEmail;
		this.pPassword = pPassword;
	}
	@Override
	public String toString() {
		return "Patient [pContact=" + pContact + ", pName=" + pName + ", pAge=" + pAge + ", pEmail=" + pEmail
				+ ", pPassword=" + pPassword + "]";
	}
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getpEmail() {
		return pEmail;
	}
	public void setpEmail(String pEmail) {
		this.pEmail = pEmail;
	}
	public String getpPassword() {
		return pPassword;
	}
	public void setpPassword(String pPassword) {
		this.pPassword = pPassword;
	}
	
	

}
