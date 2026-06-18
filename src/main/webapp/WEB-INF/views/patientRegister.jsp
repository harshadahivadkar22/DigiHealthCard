<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Doctor</title>
</head>
<body>
    <h2>Registration for patient</h2>
    <form action="patientRegister" method="post">
        <table>
            <tr>
                <td>Patient Name:</td>
                <td><input type="text" name="pName" required></td>
            </tr>
            <tr>
                <td>Patient Contact Number:</td>
                <td><input type="Number" name="pContact" required></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><input type="Number" name="pAge" required></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="pEmail" required></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="pPassword" required></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Add Patient">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>