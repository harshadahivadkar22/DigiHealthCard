<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Patient Dashboard</title>
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
        
        .dashboard-container {
            width: 100%;
            max-width: 500px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        h1 {
            color: var(--accent-color);
            text-align: center;
            margin-bottom: 30px;
            font-weight: 700;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        h1 i {
            margin-right: 15px;
            color: var(--secondary-color);
        }
        
        hr {
            border: 0;
            height: 1px;
            background: rgba(255, 255, 255, 0.2);
            margin: 30px 0;
        }
        
        .dashboard-menu {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        
        .dashboard-menu li {
            margin-bottom: 20px;
        }
        
        .dashboard-menu a {
            display: flex;
            align-items: center;
            padding: 15px 20px;
            background: rgba(43, 122, 120, 0.3);
            color: var(--accent-color);
            text-decoration: none;
            border-radius: 8px;
            transition: all 0.3s;
            font-weight: 600;
        }
        
        .dashboard-menu a:hover {
            background: rgba(43, 122, 120, 0.5);
            transform: translateX(5px);
        }
        
        .dashboard-menu i {
            margin-right: 15px;
            font-size: 20px;
            color: var(--secondary-color);
            width: 25px;
            text-align: center;
        }
        
        @media (max-width: 768px) {
            .dashboard-container {
                width: 90%;
                padding: 30px 20px;
            }
            
            h1 {
                font-size: 24px;
            }
            
            .dashboard-menu a {
                padding: 12px 15px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1><i class="fas fa-user-injured"></i> Welcome Patient</h1>
        
        <hr>
        
        <ul class="dashboard-menu">
            <li>
                <a href="viewHealthRecords">
                    <i class="fas fa-file-medical"></i> View Health Records
                </a>
            </li>
            <li>
                <a href="changePassPatient">
                    <i class="fas fa-key"></i> Change Password
                </a>
            </li>
        </ul>
    </div>
</body>
</html>