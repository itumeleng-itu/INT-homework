

<%@page import="za.ac.tut.entity.StudentCard"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Found!</title>
        <style>
            /* Consistent theme styling */
            :root {
                --primary-color: #4285f4;
                --secondary-color: #34a853;
                --accent-color: #ea4335;
                --light-color: #f8f9fa;
                --dark-color: #202124;
                --font-main: 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
                --university-color: #1a4b8c;
            }
            
            body {
                font-family: var(--font-main);
                background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
                margin: 0;
                padding: 0;
                min-height: 100vh;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                color: var(--dark-color);
            }
            
            .container {
                max-width: 600px;
                width: 90%;
                margin: 2rem auto;
            }
            
            h1 {
                color: var(--primary-color);
                text-align: center;
                margin-bottom: 1.5rem;
            }
            
            .student-card {
                background: white;
                border-radius: 12px;
                box-shadow: 0 8px 20px rgba(0,0,0,0.15);
                overflow: hidden;
                position: relative;
                margin-bottom: 2rem;
            }
            
            .card-header {
                background-color: var(--university-color);
                color: white;
                padding: 1.5rem;
                text-align: center;
                position: relative;
            }
            
            .university-name {
                font-size: 1.5rem;
                font-weight: bold;
                margin: 0;
            }
            
            .card-type {
                position: absolute;
                top: 1rem;
                right: 1rem;
                background: rgba(255,255,255,0.2);
                padding: 0.25rem 0.5rem;
                border-radius: 4px;
                font-size: 0.8rem;
            }
            
            .card-body {
                padding: 2rem;
            }
            
            .student-photo {
                width: 120px;
                height: 120px;
                border-radius: 50%;
                border: 4px solid white;
                background-color: #eee;
                margin: -80px auto 1rem;
                position: relative;
                overflow: hidden;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                display: flex;
                align-items: center;
                justify-content: center;
                color: #999;
                font-size: 2rem;
            }
            
            .student-info {
                margin-top: 1.5rem;
            }
            
            .info-row {
                display: flex;
                margin-bottom: 1rem;
                border-bottom: 1px solid #eee;
                padding-bottom: 0.5rem;
            }
            
            .info-label {
                font-weight: bold;
                width: 120px;
                color: var(--university-color);
            }
            
            .info-value {
                flex: 1;
            }
            
            .barcode {
                margin-top: 1.5rem;
                text-align: center;
                padding: 1rem;
                background: #f5f5f5;
                font-family: 'Libre Barcode 128', cursive;
                font-size: 2.5rem;
                letter-spacing: 2px;
            }
            
            .valid-until {
                text-align: right;
                font-size: 0.9rem;
                color: #666;
                margin-top: 1rem;
            }
            
            .btn-back {
                display: inline-block;
                background-color: var(--primary-color);
                color: white;
                text-decoration: none;
                padding: 0.75rem 1.5rem;
                border-radius: 4px;
                font-weight: 600;
                transition: all 0.3s;
                margin-top: 1rem;
            }
            
            .btn-back:hover {
                background-color: #3367d6;
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            }
            
            /* Animation */
            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(20px); }
                to { opacity: 1; transform: translateY(0); }
            }
            
            .student-card {
                animation: fadeIn 0.6s ease-out forwards;
            }
            
            /* Responsive design */
            @media (max-width: 600px) {
                .info-row {
                    flex-direction: column;
                }
                
                .info-label {
                    width: 100%;
                    margin-bottom: 0.25rem;
                }
            }
        </style>
        <%
            StudentCard sc = (StudentCard)request.getAttribute("studentCard");
            Long studentNumber = (Long)sc.getId();
            String name = sc.getName();
            String surname = sc.getSurname();
            String faculty = sc.getFaculty();
            String coursecode = sc.getCoursecode();
            
            // Generate barcode from student number
            String barcode = "*" + studentNumber.toString() + "*";
        %>
    </head>
    <body>
        <div class="container">
            <h1>Student Verified Successfully</h1>
            
            <div class="student-card">
                <div class="card-header">
                    <div class="card-type">STUDENT ID</div>
                    <h2 class="university-name">UNIVERSITY OF TECHNOLOGY</h2>
                </div>
                
                <div class="card-body">
                    <div class="student-photo">
                        <%= name.charAt(0) %><%= surname.charAt(0) %>
                    </div>
                    
                    <div class="student-info">
                        <div class="info-row">
                            <div class="info-label">Student Number</div>
                            <div class="info-value"><%= studentNumber %></div>
                        </div>
                        
                        <div class="info-row">
                            <div class="info-label">Full Name</div>
                            <div class="info-value"><%= name + " " + surname %></div>
                        </div>
                        
                        <div class="info-row">
                            <div class="info-label">Faculty</div>
                            <div class="info-value"><%= faculty %></div>
                        </div>
                        
                        <div class="info-row">
                            <div class="info-label">Course Code</div>
                            <div class="info-value"><%= coursecode %></div>
                        </div>
                    </div>
                    
                    <div class="barcode"><%= barcode %></div>
                    <div class="valid-until">Valid until: 31/12/2025</div>
                </div>
            </div>
            
            <a href="menu.html" class="btn-back">home</a>
        </div>
    </body>
</html>
