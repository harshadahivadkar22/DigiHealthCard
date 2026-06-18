<%@ page import="java.util.List" %>
<%@ page import="com.r3sys.model.Doctor" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>View Doctors</title>
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
            width: 90%;
            max-width: 1200px;
            margin: 40px auto;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            padding-bottom: 15px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }
        
        .header h2 {
            color: var(--accent-color);
            margin: 0;
            font-weight: 600;
            display: flex;
            align-items: center;
        }
        
        .header h2 i {
            margin-right: 15px;
            color: var(--secondary-color);
        }
        
        .logout-btn {
            background: linear-gradient(45deg, var(--primary-color), var(--secondary-color));
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            text-decoration: none;
            box-shadow: 0 4px 15px rgba(43, 122, 120, 0.4);
        }
        
        .logout-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(43, 122, 120, 0.6);
        }
        
        .doctors-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        .doctors-table th {
            background-color: rgba(43, 122, 120, 0.5);
            color: var(--accent-color);
            padding: 15px;
            text-align: left;
            font-weight: 600;
        }
        
        .doctors-table td {
            padding: 12px 15px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .doctors-table tr:hover {
            background-color: rgba(43, 122, 120, 0.2);
        }
        
        .delete-link {
            color: #ff6b6b;
            text-decoration: none;
            transition: all 0.3s;
            font-weight: 500;
        }
        
        .delete-link:hover {
            color: #ff3838;
            text-decoration: underline;
        }
        
        @media (max-width: 768px) {
            .main-container {
                width: 95%;
                padding: 20px;
            }
            
            .doctors-table {
                display: block;
                overflow-x: auto;
            }
            
            .header {
                flex-direction: column;
                align-items: flex-start;
            }
            
            .logout-btn {
                margin-top: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="main-container">
        <div class="header">
            <h2><i class="fas fa-user-md"></i> Doctor Details</h2>
            <a href="index.html" class="logout-btn">Logout</a>
        </div>
        
        <table class="doctors-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Specialization</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% List<Doctor> getAllDoctor = (List<Doctor>)request.getAttribute("getAllDoctor");
                   for(Doctor d : getAllDoctor) { %>
                <tr>
                    <td><%= d.getdContact() %></td>
                    <td><%= d.getdName() %></td>
                    <td><%= d.getdSpecialization() %></td>
                    <td><%= d.getdEmail() %></td>
                    <td><a href="delete?dContact=<%= d.getdContact() %>" class="delete-link">Delete</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <script>
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
    </script>
</body>
</html>