<%@ page import="java.util.*, com.r3sys.model.Record" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin: Manage Health Records</title>
    <link href="./resources/css/fontawesome-all.css" rel="stylesheet">
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
        
        h2 {
            color: var(--accent-color);
            margin-bottom: 30px;
            font-weight: 600;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
            display: flex;
            align-items: center;
        }
        
        h2 i {
            margin-right: 15px;
            color: var(--secondary-color);
        }
        
        .records-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        .records-table th {
            background-color: rgba(43, 122, 120, 0.5);
            color: var(--accent-color);
            padding: 15px;
            text-align: left;
            font-weight: 600;
        }
        
        .records-table td {
            padding: 12px 15px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .records-table tr:hover {
            background-color: rgba(43, 122, 120, 0.2);
        }
        
        .action-btn {
            background: linear-gradient(45deg, var(--primary-color), var(--secondary-color));
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            margin: 2px;
            box-shadow: 0 2px 10px rgba(43, 122, 120, 0.3);
        }
        
        .action-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(43, 122, 120, 0.4);
        }
        
        .delete-btn {
            background: linear-gradient(45deg, #d9534f, #c9302c);
        }
        
        form {
            display: inline;
            margin: 0;
            padding: 0;
        }
        
        @media (max-width: 768px) {
            .main-container {
                width: 95%;
                padding: 20px;
                overflow-x: auto;
            }
            
            .records-table {
                display: block;
                overflow-x: auto;
            }
        }
    </style>
</head>
<body>
    <div class="main-container">
        <h2><i class="fas fa-file-medical-alt"></i> All Health Records</h2>
        
        <table class="records-table">
            <tr>
                <th>Record ID</th>
                <th>Patient Contact</th>
                <th>Patient Name</th>
                <th>Doctor Contact</th>
                <th>Doctor Name</th>
                <th>Record Type</th>
                <th>Description</th>
                <th>Date</th>
                <th>Actions</th>
            </tr>
            <%
                List<Record> recordList = (List<Record>) request.getAttribute("records");
                for (Record r : recordList) {
            %>
            <tr>
                <td><%= r.getrId() %></td>
                <td><%= r.getpContact() %></td>
                <td><%= r.getpName() %></td>
                <td><%= r.getdContact() %></td>      
                <td><%= r.getdName() %></td>
                <td><%= r.getrRecordType() %></td>
                <td><%= r.getrDescription() %></td>
                <td><%= r.getrDate() %></td>
                <td>
                    
                    <form action="delete1">
                        <input type="hidden" name="rId" value="<%= r.getrId() %>"/>
                        <button type="submit" class="action-btn delete-btn">Delete</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
    </div>
</body>
</html>