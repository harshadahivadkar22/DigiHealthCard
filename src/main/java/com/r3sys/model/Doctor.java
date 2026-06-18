package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "doctorDB")
@Component
public class Doctor {
	@Id
	private long dContact;
	private String dName;
	private String dSpecialization;
	private String dEmail;
	private String dPassword;
	public long getdContact() {
		return dContact;
	}
	public void setdContact(long dContact) {
		this.dContact = dContact;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getdSpecialization() {
		return dSpecialization;
	}
	public void setdSpecialization(String dSpecialization) {
		this.dSpecialization = dSpecialization;
	}
	public String getdEmail() {
		return dEmail;
	}
	public void setdEmail(String dEmail) {
		this.dEmail = dEmail;
	}
	public String getdPassword() {
		return dPassword;
	}
	public void setdPassword(String dPassword) {
		this.dPassword = dPassword;
	}
	public Doctor(long dContact, String dName, String dSpecialization, String dEmail, String dPassword) {
		super();
		this.dContact = dContact;
		this.dName = dName;
		this.dSpecialization = dSpecialization;
		this.dEmail = dEmail;
		this.dPassword = dPassword;
	}
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Doctor [dContact=" + dContact + ", dName=" + dName + ", dSpecialization=" + dSpecialization
				+ ", dEmail=" + dEmail + ", dPassword=" + dPassword + "]";
	}
	
	

}
