package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity
@Table(name = "tableDB")
@Component
public class Record {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int rId;
	private long pContact;
	private long dContact;
	private String rRecordType;
	private String rDescription;
	private String rDate;
	private String pName; // from joined patient table
    private String dName; // from joined doctor table
	public int getrId() {
		return rId;
	}
	public void setrId(int rId) {
		this.rId = rId;
	}
	public long getpContact() {
		return pContact;
	}
	public void setpContact(long pContact) {
		this.pContact = pContact;
	}
	public long getdContact() {
		return dContact;
	}
	public void setdContact(long dContact) {
		this.dContact = dContact;
	}
	public String getrRecordType() {
		return rRecordType;
	}
	public void setrRecordType(String rRecordType) {
		this.rRecordType = rRecordType;
	}
	public String getrDescription() {
		return rDescription;
	}
	public void setrDescription(String rDescription) {
		this.rDescription = rDescription;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public String getdName() { return dName; }
	public void setdName(String dName) { this.dName = dName; }

	public String getpName() { return pName; }
	public void setpName(String pName) { this.pName = pName; }
	public Record(int rId, long pContact, long dContact, String rRecordType, String rDescription, String rDate) {
		super();
		this.rId = rId;
		this.pContact = pContact;
		this.dContact = dContact;
		this.rRecordType = rRecordType;
		this.rDescription = rDescription;
		this.rDate = rDate;
	}
	public Record() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Record [rId=" + rId + ", pContact=" + pContact + ", dContact=" + dContact + ", rRecordType="
				+ rRecordType + ", rDescription=" + rDescription + ", rDate=" + rDate + "]";
	}

}
