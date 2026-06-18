package com.r3sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.dao.DoctorDao;
import com.r3sys.dao.PatientDao;
import com.r3sys.dao.RecordDao;
import com.r3sys.model.Doctor;
import com.r3sys.model.Patient;
import com.r3sys.model.Record;

@Controller
public class AdminController {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");

	Doctor doctor = (Doctor) context.getBean("doctor");
	DoctorDao doctorDao = (DoctorDao) context.getBean("doctorDao");

	Patient patient = (Patient) context.getBean("patient");
	PatientDao patientDao = (PatientDao) context.getBean("patientDao");

	Record record = (Record) context.getBean("record");
	RecordDao recordDao = (RecordDao) context.getBean("recordDao");

	@RequestMapping("/")
	public String home() {
		System.out.println("open index page");
		return "index";
	}

	@RequestMapping("/index")
	public String login() {
		return "index";
	}

	@RequestMapping(path = "/AdminLogin", method = RequestMethod.POST)
	public String SubmitLogin(HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if (email.equals("admin@gmail.com") && password.equals("admin")) {
			System.out.println("Open Dashboard");
			return "AdminDashboard";
		} else {
			return "index";
		}
	}

	@RequestMapping("/addDoctor")
	public String openAddDoctorPage() {
		System.out.println("Open Add Doctor Page");
		return "addDoctor";
	}

	@RequestMapping(path = "/addDoctor", method = RequestMethod.POST)
	public String addDoctor(HttpServletRequest Request) {
		Doctor doctor = new Doctor();
		doctor.setdContact(Long.parseLong(Request.getParameter("dContact")));
		doctor.setdName(Request.getParameter("dName"));
		doctor.setdSpecialization(Request.getParameter("dSpecialization"));
		doctor.setdEmail(Request.getParameter("dEmail"));
		doctor.setdPassword(Request.getParameter("dPassword"));

		long i = doctorDao.insert(doctor);
		if (i > 0) {
			System.out.println("Doctor Added Successfully");
			return "redirect:/show";
		} else {
			return "index";
		}
	}

	@RequestMapping("/show")
	public String show(Model m) {
		List<Doctor> getAllDoctor = doctorDao.getAllDoctor();
		m.addAttribute("getAllDoctor", getAllDoctor);
		return "show";
	}

	@RequestMapping(path = "/delete", method = RequestMethod.GET)
	public String deleteAccount(HttpServletRequest request) {
		long dContact = Long.parseLong(request.getParameter("dContact"));
		doctorDao.deleteDoctor(dContact);
		return "redirect:/show";
	}

	@RequestMapping("/DoctorLogin")
	public String doctorLoginpage() {
		System.out.println("opening doctor login page");
		return "DoctorLogin";
	}

	@RequestMapping(path = "/DoctorLogin", method = RequestMethod.POST)
	public String SubmitDoctorLogin(HttpServletRequest request, Model model) {
		long dContact = Long.parseLong(request.getParameter("dContact"));
		String dPassword = request.getParameter("dPassword");
		Doctor doctor = doctorDao.getDoctor(dContact);

		if (doctor != null) {
			if (doctor.getdPassword().trim().equals(dPassword.trim())) {
				HttpSession session = request.getSession();
				session.setAttribute("dContact", dContact);
				System.out.println("doctor login successfully...");

				return "doctorDashboard";

			} else {
				System.out.println("Incorrect password");
			}
		} else {
			System.out.println("Doctor not found ");
		}
		return dPassword;
	}

	@RequestMapping("/patientRegister")
	public String openAddPatientPage() {
		System.out.println("opend add patient page..................");
		return "patientRegister";
	}

	@RequestMapping(path = "/patientRegister", method = RequestMethod.POST)
	public String patientRegister(HttpServletRequest Request) {
		patient.setpContact(Long.parseLong(Request.getParameter("pContact")));
		patient.setpName(Request.getParameter("pName"));
		patient.setpAge(Integer.parseInt(Request.getParameter("pAge")));
		patient.setpEmail(Request.getParameter("pEmail"));
		patient.setpPassword(Request.getParameter("pPassword"));

		long i = patientDao.insert(patient);
		if (i > 0) {
			System.out.println("Patient Added Successfully");
			return "redirect:/viewPatients";
		} else {
			return "index";
		}
	}

	@RequestMapping("/viewPatients")
	public String viewPatients(Model m) {
		List<Patient> getAllPatient = patientDao.getAllPatient();
		m.addAttribute("getAllPatient", getAllPatient);
		return "viewPatients";
	}

	@RequestMapping("/PatientLogin")
	public String patientLoginpage() {
		System.out.println("opening patient login page");
		return "PatientLogin";
	}

	@RequestMapping(path = "/PatientLogin", method = RequestMethod.POST)
	public String SubmitPatientLogin(HttpServletRequest request, Model model) {
		long pContact = Long.parseLong(request.getParameter("pContact"));
		String pPassword = request.getParameter("pPassword");
		Patient patient = patientDao.getPatient(pContact);

		if (patient != null) {
			if (patient.getpPassword().trim().equals(pPassword.trim())) {
				System.out.println("Patient login successfully...");
				return "patientDashboard";
			} else {
				System.out.println("Incorrect password");
			}
		} else {
			System.out.println("Patient not found ");
		}
		return pPassword;
	}

	@RequestMapping("/addPatientRecord")
	public String opendAddPatientRecordPage() {
		System.out.println("opend add patient record page");
		return "addPatientRecord";
	}

	@RequestMapping(path = "/addPatientRecord", method = RequestMethod.POST)
	public String addPatientRecord(HttpServletRequest request) {

		// ✅ Get dContact from session, not from form
		HttpSession session = request.getSession(false);
		Long dContact = (Long) session.getAttribute("dContact");
		if (dContact == null) {
			// Redirect to login if session expired or doctor not logged in
			return "redirect:/DoctorLogin";
		}

		record.setpContact(Long.parseLong(request.getParameter("pContact")));
		record.setdContact(dContact); // ✅ Auto-set from session
		record.setrRecordType(request.getParameter("rRecordType"));
		record.setrDescription(request.getParameter("rDescription"));
		record.setrDate(request.getParameter("rDate"));

		recordDao.insert(record);

		System.out.println("Record Added Successfully");
		return "redirect:/viewPatientHistory";

	}

	@RequestMapping("/viewPatientHistory")
	public String viewPatientHistory(Model m) {
		List<Record> getAllRecord = recordDao.getAllRecord();
		m.addAttribute("getAllRecord", getAllRecord);
		return "viewPatientHistory";
	}
	@RequestMapping("/viewHealthRecords")
	public String viewHealthRecords(Model m)
	{
		List<Record> getAllRecord = recordDao.getAllRecord();
		m.addAttribute("getAllRecord", getAllRecord);
		return "viewHealthRecords";
	}
	@RequestMapping(path = "/changePass", method = RequestMethod.GET)	
	public String changePassword()
	{
		System.out.println("open change password");
		return "changePass";
	}
	@RequestMapping(path = "/ChangePass", method = RequestMethod.POST)
	public String passchange1(HttpServletRequest Request, Model model) {
		long dContact = Long.parseLong(Request.getParameter("dContact"));
		String dPassword = Request.getParameter("dPassword");
		String newPassword = Request.getParameter("newPassword");

		Doctor doctor = doctorDao.getDoctor(dContact);

		if (doctor != null) {
			if (doctor.getdPassword().trim().equals(dPassword.trim())) {
				
    			doctor.setdPassword(Request.getParameter("newPassword"));
    	        doctorDao.updateDoctor(doctor);
				
				System.out.println("Password Changed.");
				return "index"; 
			} else {
				System.out.println("Incorrect Current password.");
			}
		} else {
			System.out.println("Doctor not found for contact: " + dContact);
		}

		return "index";
	}
	@RequestMapping(path = "changePassPatient", method = RequestMethod.GET)	
	public String changePass()
	{
		System.out.println("open change password");
		return "changePassPatient";
	}
	@RequestMapping(path = "/changePassPatient", method = RequestMethod.POST)
	public String changePass(HttpServletRequest Request, Model model) {
		long pContact = Long.parseLong(Request.getParameter("pContact"));
		String pPassword = Request.getParameter("pPassword");
		String newPassword = Request.getParameter("newPassword1");

		Patient patient = patientDao.getPatient(pContact);

		if (patient != null) {
			if (patient.getpPassword().trim().equals(pPassword.trim())) {
				
    			patient.setpPassword(Request.getParameter("newPassword1"));
    	        patientDao.updatePatient(patient);
				
				System.out.println("Password Changed.");
				return "index"; 
			} else {
				System.out.println("Incorrect Current password.");
			}
		} else {
			System.out.println("Doctor not found for contact: " + pContact);
		}

		return "index";
	}
	@RequestMapping("/manageRecords")
	public String manageRecords(HttpServletRequest request, Model model) 
	{
	    List<Record> records = recordDao.getAllRecord();

	    // Inject doctor and patient names using existing list
	    List<Doctor> doctors = doctorDao.getAllDoctor();
	    List<Patient> patients = patientDao.getAllPatient();

	    for (Record r : records) {
	        boolean doctorFound = false;
	        boolean patientFound = false;

	        for (Doctor d : doctors) {
	            if (String.valueOf(d.getdContact()).equals(String.valueOf(r.getdContact()))) {
	                r.setdName(d.getdName());
	                doctorFound = true;
	                break;
	            }
	        }

	        if (!doctorFound) {
	            System.err.println("Doctor not found for contact: " + r.getdContact());
	        }

	        for (Patient p : patients) {
	            if (String.valueOf(p.getpContact()).equals(String.valueOf(r.getpContact()))) {
	                r.setpName(p.getpName());
	                patientFound = true;
	                break;
	            }
	        }

	        if (!patientFound) {
	            System.err.println("Patient not found for contact: " + r.getpContact());
	        }
	    }
	    request.setAttribute("records", records);
	    return "manageRecords";
	}
	
	
	@RequestMapping(path = "/delete1", method = RequestMethod.GET)
	public String deleteAccount1(HttpServletRequest request) 
	{
		int rId = Integer.parseInt(request.getParameter("rId"));
		recordDao.deleteRecord(rId);
		return "redirect:/manageRecords";
	}
}
