package com.r3sys.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;


import com.r3sys.model.Doctor;
@Component
public class DoctorDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public long insert(Doctor doctor)
	{
		return (Long) this.hibernateTemplate.save(doctor); // assuming ID is Long
	}
	public List<Doctor> getAllDoctor() {
		List<Doctor> doctor = this.hibernateTemplate.loadAll(Doctor.class);
		return doctor;
	}

	public Doctor getDoctor(long dContact) {
		Doctor doctor = this.hibernateTemplate.get(Doctor.class, dContact);
		return doctor;
	}
	@Transactional
	public void deleteDoctor(long dContact) 
	{
		Doctor doctor = this.hibernateTemplate.get(Doctor.class, dContact);
		if (doctor != null) {
	        this.hibernateTemplate.delete(doctor);
	    }	
	}
	@Transactional //for making transaction with database like insert, delete, update
	public void updateDoctor(Doctor doctor) {
	this.hibernateTemplate.update(doctor);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public Doctor getDoctorByContact(Long dContact) {
		// TODO Auto-generated method stub
		return null;
	}
}
