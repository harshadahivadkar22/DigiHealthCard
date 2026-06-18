package com.r3sys.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.dao.DoctorDao;
import com.r3sys.model.Doctor;

public class DoctorController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Doctor doctor = (Doctor) context.getBean("doctor");
	DoctorDao doctorDao = (DoctorDao) context.getBean("doctorDao");
	
}
