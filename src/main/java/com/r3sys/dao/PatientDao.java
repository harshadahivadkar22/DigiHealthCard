package com.r3sys.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.r3sys.model.Doctor;
import com.r3sys.model.Patient;
@Component
public class PatientDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public long insert(Patient patient) 
	{
		// insert
		Long i = (Long) this.hibernateTemplate.save(patient);
		return i;
	}
	
	public List<Patient> getAllPatient()
	{
		List<Patient> patient = this.hibernateTemplate.loadAll(Patient.class);
		return patient;
	}
	
	public Patient getPatient(long pContact)
	{
		Patient patient = this.hibernateTemplate.get(Patient.class, pContact);
		return patient;
	}
	@Transactional
	public void deletePatient(long pContact) 
	{
		Patient patient = this.hibernateTemplate.get(Patient.class, pContact);
		if (patient != null) {
	        this.hibernateTemplate.delete(patient);
	    }	
	}
	@Transactional
	public void updatePatient(Patient patient)
	{
		this.hibernateTemplate.update(patient);
	}
	

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	

}
