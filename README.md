# DigiHealthCard 🏥

A Digital Health Card Management System developed using Java, Spring MVC, Hibernate, JSP, and MySQL. The application provides a centralized platform for managing patient health records, doctor information, and medical history digitally.

## 📌 Features

### Admin Module

* Admin Login
* Add and Manage Doctors
* View Registered Patients
* Manage Health Records
* Change Password

### Doctor Module

* Doctor Login
* View Patient Information
* Add Patient Health Records
* View Patient Medical History
* Manage Records

### Patient Module

* Patient Registration and Login
* View Personal Health Records
* View Medical History
* Change Password

## 🛠️ Technologies Used

* Java
* Spring MVC
* Hibernate ORM
* JSP
* Servlet API
* MySQL Database
* Maven
* Apache Tomcat

## 📂 Project Structure

```text
DigiHealthCard
│
├── Controller Layer
│   ├── AdminController
│   └── DoctorController
│
├── DAO Layer
│   ├── DoctorDao
│   ├── PatientDao
│   └── RecordDao
│
├── Model Layer
│   ├── Doctor
│   ├── Patient
│   └── Record
│
├── JSP Views
│   ├── AdminDashboard.jsp
│   ├── doctorDashboard.jsp
│   ├── patientDashboard.jsp
│   ├── addDoctor.jsp
│   ├── addPatientRecord.jsp
│   ├── manageRecords.jsp
│   ├── viewPatients.jsp
│   ├── viewHealthRecords.jsp
│   └── more...
│
└── Configuration Files
    ├── spring-servlet.xml
    ├── web.xml
    └── config.xml
```

## ⚙️ Prerequisites

* Java JDK 8 or above
* Eclipse IDE
* Apache Tomcat Server
* MySQL Server
* Maven

## 🚀 Setup Instructions

1. Clone the repository

```bash
git clone https://github.com/harshadahivadkar22/DigiHealthCard.git
```

2. Import the project into Eclipse

* File → Import → Existing Maven Project
* Select the project folder

3. Configure MySQL Database

* Create a database in MySQL
* Update database credentials in configuration files

4. Build the project

```bash
mvn clean install
```

5. Deploy on Apache Tomcat

* Add project to Tomcat Server
* Run the server

6. Open in browser

```text
http://localhost:8080/DigiHealthCard
```

## 📊 System Workflow

1. Admin manages doctors and patients.
2. Doctors add and update patient health records.
3. Patients can access their health information securely.
4. All records are stored digitally for easy access and management.

## 🎯 Objectives

* Digitize healthcare records.
* Reduce paperwork.
* Improve accessibility of patient medical history.
* Provide a secure and centralized health record management system.

## 👩‍💻 Author

**Harsha Dahivadkar**

GitHub: https://github.com/harshadahivadkar22

## 📜 License

This project is developed for educational and learning purposes.
