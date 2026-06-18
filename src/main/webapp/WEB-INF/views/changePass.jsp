<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Password Change</title>
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
        
        .password-change-container {
            width: 100%;
            max-width: 500px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.1);
            text-align: center;
        }
        
        .password-change-container i {
            font-size: 50px;
            color: var(--secondary-color);
            margin-bottom: 20px;
        }
        
        .password-change-container h2 {
            color: var(--accent-color);
            margin-bottom: 30px;
            font-weight: 600;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
        }
        
        .form-group {
            margin-bottom: 25px;
            text-align: left;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--accent-color);
        }
        
        .form-group input {
            background: transparent;
            border: none;
            border-bottom: 2px solid rgba(255, 255, 255, 0.2);
            color: white;
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            outline: none;
        }
        
        .form-group input::placeholder {
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
        
        .error {
            color: #ff6b6b;
            margin-top: 20px;
            font-weight: 500;
        }
        
        .success {
            color: var(--secondary-color);
            margin-top: 20px;
            font-weight: 500;
        }
        
        .back-link {
            display: inline-block;
            margin-top: 25px;
            color: var(--accent-color);
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s;
        }
        
        .back-link:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }
        
        .back-link i {
            font-size: 16px;
            margin-right: 8px;
        }
        
        @media (max-width: 600px) {
            .password-change-container {
                width: 90%;
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="password-change-container">
        <i class="fas fa-user-md"></i>
        <h2>Doctor Password Change</h2>
        
        <form action="ChangePass" method="POST">
            <!-- Current Credentials Verification -->
            <div class="form-group">
                <label for="dContact">Contact Number</label>
                <input type="text" id="dContact" name="dContact" 
                       placeholder="Enter your contact number" required>
            </div>
            <div class="form-group">
                <label for="dPassword">Current Password</label>
                <input type="password" id="dPassword" name="dPassword" 
                       placeholder="Enter current password" required>
            </div>
            
            <!-- New Password Section -->
            <div class="form-group">
                <label for="newPassword">New Password</label>
                <input type="password" id="newPassword" name="newPassword" 
                       placeholder="Enter new password" required>
            </div>
            
            <button type="submit">Change Password</button>
            
            <!-- Error/Success Messages -->
            <% if (request.getAttribute("error") != null) { %>
                <p class="error"><%= request.getAttribute("error") %></p>
            <% } %>
            <% if (request.getAttribute("success") != null) { %>
                <p class="success"><%= request.getAttribute("success") %></p>
            <% } %>
        </form>
        
        <a href="doctorDashboard" class="back-link">
            <i class="fas fa-arrow-left"></i> Back to Dashboard
        </a>
    </div>
</body>
</html>