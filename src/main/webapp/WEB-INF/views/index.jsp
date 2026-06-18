<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="DigiHealthCard, Medical Login, Healthcare Portal, Doctor Login, Patient Login, Admin Login" />
    <title>DigiHealthCard - Login Portal</title>
    <link href="./resources/css/style.css" rel="stylesheet" type="text/css" />
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
        }
        
        .main-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
        }
        
        .logo-container {
            text-align: center;
            margin-bottom: 40px;
        }
        
        .logo {
            height: 80px;
            filter: drop-shadow(0 0 10px rgba(43, 122, 120, 0.7));
        }
        
        .header-text {
            color: var(--light-color);
            margin-top: 15px;
            font-size: 28px;
            font-weight: 700;
            letter-spacing: 1px;
        }
        
        .login-wrapper {
            width: 100%;
            max-width: 500px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .role-tabs {
            display: flex;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .role-tab {
            flex: 1;
            text-align: center;
            padding: 15px 0;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 600;
            color: rgba(255, 255, 255, 0.7);
            background: rgba(0, 0, 0, 0.2);
            position: relative;
        }
        
        .role-tab:not(:last-child) {
            border-right: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .role-tab.active {
            color: var(--light-color);
            background: rgba(43, 122, 120, 0.5);
        }
        
        .role-tab.active::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 3px;
            background: var(--secondary-color);
        }
        
        .role-tab i {
            margin-right: 8px;
            font-size: 18px;
        }
        
        .login-content {
            padding: 30px;
        }
        
        .login-form {
            display: none;
            animation: fadeIn 0.5s ease;
        }
        
        .login-form.active {
            display: block;
        }

        .form-toggle {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        
        .form-toggle-btn {
            background: transparent;
            border: none;
            color: var(--accent-color);
            padding: 8px 20px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            position: relative;
            outline: none;
        }
        
        .form-toggle-btn.active {
            color: var(--secondary-color);
        }
        
        .form-toggle-btn.active::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 20%;
            width: 60%;
            height: 2px;
            background: var(--secondary-color);
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .w3l-form-group {
            margin-bottom: 25px;
        }
        
        .w3l-form-group label {
            display: block;
            margin-bottom: 10px;
            font-weight: 500;
            color: var(--accent-color);
        }
        
        .group {
            display: flex;
            align-items: center;
            border-bottom: 2px solid rgba(255, 255, 255, 0.2);
            padding-bottom: 8px;
        }
        
        .group i {
            color: var(--secondary-color);
            margin-right: 12px;
            font-size: 18px;
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
        
        .forgot-link {
            text-align: right;
            margin-top: 10px;
        }
        
        .forgot-link a {
            color: var(--accent-color);
            text-decoration: none;
            font-size: 14px;
            transition: all 0.3s;
        }
        
        .forgot-link a:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }
        
        @media (max-width: 600px) {
            .login-wrapper {
                width: 95%;
            }
            
            .role-tab {
                padding: 12px 0;
                font-size: 14px;
            }
            
            .role-tab i {
                font-size: 16px;
                margin-right: 5px;
            }
            
            .login-content {
                padding: 20px;
            }
        }
    </style>
</head>

<body>
    <div class="main-container">
        <div class="logo-container">
            <div class="header-text">Digital Healthcare Portal</div>
        </div>
        
        <div class="login-wrapper">
            <div class="role-tabs">
                <div class="role-tab active" onclick="showLoginForm('admin')">
                    <i class="fas fa-user-shield"></i> Admin
                </div>
                <div class="role-tab" onclick="showLoginForm('doctor')">
                    <i class="fas fa-user-md"></i> Doctor
                </div>
                <div class="role-tab" onclick="showLoginForm('patient')">
                    <i class="fas fa-user-injured"></i> Patient
                </div>
            </div>
            
            <div class="login-content">
                <!-- Admin Login Form -->
                <div id="admin-form" class="login-form active">
                    <form action="AdminLogin" method="POST">
                        <div class="w3l-form-group">
                            <label>Email Address</label>
                            <div class="group">
                                <i class="fas fa-envelope"></i>
                                <input type="email" class="form-control" placeholder="Enter your email" name="email" required>
                            </div>
                        </div>
                        <div class="w3l-form-group">
                            <label>Password</label>
                            <div class="group">
                                <i class="fas fa-lock"></i>
                                <input type="password" class="form-control" placeholder="Enter your password" name="password" required>
                            </div>
                            <div class="forgot-link">
                                <a href="#">Forgot password?</a>
                            </div>
                        </div>
                        <button type="submit">LOGIN AS ADMIN</button>
                    </form>
                </div>
                
                <!-- Doctor Login Form -->
                <div id="doctor-form" class="login-form">
                    <form action="DoctorLogin" method="POST">
                        <div class="w3l-form-group">
                            <label>Contact Number</label>
                            <div class="group">
                                <i class="fas fa-phone-alt"></i>
                                <input type="number" class="form-control" placeholder="Enter your contact number" name="dContact" required>
                            </div>
                        </div>
                        <div class="w3l-form-group">
                            <label>Password</label>
                            <div class="group">
                                <i class="fas fa-lock"></i>
                                <input type="password" class="form-control" placeholder="Enter your password" name="dPassword" required>
                            </div>
                            <div class="forgot-link">
                                <a href="#">Forgot password?</a>
                            </div>
                        </div>
                        <button type="submit">LOGIN AS DOCTOR</button>
                    </form>
                </div>
                
                <!-- Patient Login/Register Form -->
                <div id="patient-form" class="login-form">
                    <div class="form-toggle">
                        <button class="form-toggle-btn active" onclick="togglePatientForm('login')">Login</button>
                        <button class="form-toggle-btn" onclick="togglePatientForm('register')">Register</button>
                    </div>
                    
                    <!-- Patient Login -->
                    <div id="patient-login" class="patient-form">
                        <form action="PatientLogin" method="POST">
                            <div class="w3l-form-group">
                                <label>Contact Number</label>
                                <div class="group">
                                    <i class="fas fa-mobile-alt"></i>
                                    <input type="number" class="form-control" placeholder="Enter your contact number" name="pContact" required>
                                </div>
                            </div>
                            <div class="w3l-form-group">
                                <label>Password</label>
                                <div class="group">
                                  <i class="fas fa-lock"></i>
                                    <input type="password" class="form-control" placeholder="Enter your password" name="pPassword" required>
                             </div>
                                <div class="forgot-link">
                                    <a href="#">Forgot password?</a>
                                </div>
                            </div>
                            <button type="submit">LOGIN AS PATIENT</button>
                        </form>
                    </div>
                    
                    <!-- Patient Registration -->
                    <div id="patient-register" class="patient-form" style="display: none;">
                        <form action="patientRegister" method="POST">
                            <div class="w3l-form-group">
                                <label>Patient Name</label>
                                <div class="group">
                                    <i class="fas fa-user"></i>
                                    <input type="text" class="form-control" placeholder="Enter your full name" name="pName" required>
                                </div>
                            </div>
                            <div class="w3l-form-group">
                                <label>Contact Number</label>
                                <div class="group">
                                    <i class="fas fa-mobile-alt"></i>
                                    <input type="number" class="form-control" placeholder="Enter your contact number" name="pContact" required>
                                </div>
                            </div>
                            <div class="w3l-form-group">
                                <label>Age</label>
                                <div class="group">
                                    <i class="fas fa-calendar-alt"></i>
                                    <input type="number" class="form-control" placeholder="Enter your age" name="pAge" required>
                                </div>
                            </div>
                            <div class="w3l-form-group">
                                <label>Email</label>
                                <div class="group">
                                    <i class="fas fa-envelope"></i>
                                    <input type="email" class="form-control" placeholder="Enter your email" name="pEmail" required>
                                </div>
                            </div>
                            <div class="w3l-form-group">
                                <label>Password</label>
                                <div class="group">
                                    <i class="fas fa-lock"></i>
                                    <input type="password" class="form-control" placeholder="Create a password" name="pPassword" required>
                                </div>
                            </div>
                            <button type="submit">REGISTER AS PATIENT</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        function showLoginForm(role) {
            // Hide all forms
            document.querySelectorAll('.login-form').forEach(form => {
                form.classList.remove('active');
            });
            
            // Remove active class from all tabs
            document.querySelectorAll('.role-tab').forEach(tab => {
                tab.classList.remove('active');
            });
            
            // Show selected form and activate tab
            document.getElementById(role + '-form').classList.add('active');
            event.currentTarget.classList.add('active');
            
            // Reset patient form to login view when switching tabs
            if (role === 'patient') {
                togglePatientForm('login');
            }
        }
        
        function togglePatientForm(formType) {
            // Toggle buttons
            document.querySelectorAll('.form-toggle-btn').forEach(btn => {
                btn.classList.remove('active');
            });
            event.currentTarget.classList.add('active');
            
            // Toggle forms
            document.getElementById('patient-login').style.display = formType === 'login' ? 'block' : 'none';
            document.getElementById('patient-register').style.display = formType === 'register' ? 'block' : 'none';
        }
        
        function validateEmail(emailField) {
            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            if (reg.test(emailField.value) == false) {
                alert('Invalid Email Address');
                return false;
            }
            return true;
        }
    </script>
</body>
</html>