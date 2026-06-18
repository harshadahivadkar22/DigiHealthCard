<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Add Doctor</title>
    <link href="./resources/css/fontawesome-all.css" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2b7a78;
            --secondary-color: #3aafa9;
            --accent-color: #def2f1;
            --dark-color: #17252a;
            --light-color: #feffff;
        }
        
        body {
            margin: 0;
            padding: 0;
            font-family: 'Raleway', sans-serif;
            background: linear-gradient(rgba(0, 0, 0, 0.85), rgba(0, 0, 0, 0.85)), 
                        url('https://images.unsplash.com/photo-1576091160550-2173dba999ef?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: var(--light-color);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .form-container {
            width: 100%;
            max-width: 500px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        h2 {
            color: var(--accent-color);
            text-align: center;
            margin-bottom: 30px;
            font-weight: 600;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
        }
        
        .form-group {
            margin-bottom: 25px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--accent-color);
        }
        
        .input-group {
            display: flex;
            align-items: center;
            border-bottom: 2px solid rgba(255, 255, 255, 0.2);
            padding-bottom: 8px;
        }
        
        .input-group i {
            color: var(--secondary-color);
            margin-right: 12px;
            font-size: 18px;
            width: 20px;
            text-align: center;
        }
        
        .form-control {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 100%;
            padding: 8px 0;
            font-size: 16px;
        }
        
        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.4);
        }
        
        button[type="submit"] {
            background: linear-gradient(45deg, var(--primary-color), var(--secondary-color));
            color: white;
            border: none;
            padding: 14px 0;
            width: 100%;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 20px;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(43, 122, 120, 0.4);
        }
        
        button[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(43, 122, 120, 0.6);
        }
        
        @media (max-width: 600px) {
            .form-container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2><i class="fas fa-user-md"></i> Add New Doctor</h2>
        <form action="addDoctor" method="post">
            <div class="form-group">
                <label>Doctor Name</label>
                <div class="input-group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" name="dName" placeholder="Enter doctor's name" required>
                </div>
            </div>
            
            <div class="form-group">
                <label>Contact Number</label>
                <div class="input-group">
                    <i class="fas fa-phone-alt"></i>
                    <input type="text" class="form-control" name="dContact" placeholder="Enter contact number" required>
                </div>
            </div>
            
            <div class="form-group">
                <label>Specialization</label>
                <div class="input-group">
                    <i class="fas fa-stethoscope"></i>
                    <input type="text" class="form-control" name="dSpecialization" placeholder="Enter specialization" required>
                </div>
            </div>
            
            <div class="form-group">
                <label>Email</label>
                <div class="input-group">
                    <i class="fas fa-envelope"></i>
                    <input type="email" class="form-control" name="dEmail" placeholder="Enter email address" required>
                </div>
            </div>
            
            <div class="form-group">
                <label>Password</label>
                <div class="input-group">
                    <i class="fas fa-lock"></i>
                    <input type="password" class="form-control" name="dPassword" placeholder="Create password" required>
                </div>
            </div>
            
            <button type="submit">ADD DOCTOR</button>
        </form>
    </div>
</body>
</html>