<%-- 
    Document   : viewAllStudentCards
    Created on : 11 May 2025, 5:26:50 PM
    Author     : matom
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.StudentCard"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Register</title>
        <style>
            /* Consistent theme styling */
            :root {
                --primary-color: #4285f4;
                --secondary-color: #34a853;
                --accent-color: #fbbc05;
                --light-color: #f8f9fa;
                --dark-color: #202124;
                --font-main: 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
                --university-color: #1a4b8c;
            }
            
            body {
                font-family: var(--font-main);
                background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
                margin: 0;
                padding: 2rem;
                color: var(--dark-color);
            }
            
            .container {
                max-width: 1400px;
                margin: 0 auto;
            }
            
            h1 {
                color: var(--university-color);
                text-align: center;
                margin-bottom: 2rem;
            }
            
            .student-count {
                text-align: center;
                margin-bottom: 2rem;
                font-size: 1.1rem;
                color: #555;
            }
            
            .count-number {
                font-weight: bold;
                color: var(--primary-color);
            }
            
            .student-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
                gap: 2rem;
                margin-bottom: 3rem;
            }
            
            .student-card {
                background: white;
                border-radius: 12px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
                overflow: hidden;
                transition: transform 0.3s;
            }
            
            .student-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 8px 16px rgba(0,0,0,0.15);
            }
            
            .card-header {
                background-color: var(--university-color);
                color: white;
                padding: 1rem;
                text-align: center;
                position: relative;
            }
            
            .university-name {
                font-size: 1.1rem;
                font-weight: bold;
                margin: 0;
            }
            
            .card-type {
                position: absolute;
                top: 0.5rem;
                right: 0.5rem;
                background: rgba(255,255,255,0.2);
                padding: 0.15rem 0.4rem;
                border-radius: 3px;
                font-size: 0.7rem;
            }
            
            .card-body {
                padding: 1.5rem;
            }
            
            .student-photo {
                width: 80px;
                height: 80px;
                border-radius: 50%;
                border: 3px solid white;
                background-color: #eee;
                margin: -50px auto 0.5rem;
                position: relative;
                overflow: hidden;
                box-shadow: 0 2px 6px rgba(0,0,0,0.1);
                display: flex;
                align-items: center;
                justify-content: center;
                color: #999;
                font-size: 1.5rem;
            }
            
            .student-name {
                text-align: center;
                font-weight: 600;
                margin: 0.5rem 0;
                color: var(--dark-color);
            }
            
            .student-number {
                text-align: center;
                color: #666;
                font-size: 0.9rem;
                margin-bottom: 1rem;
            }
            
            .student-info {
                margin-top: 0.5rem;
                font-size: 0.9rem;
            }
            
            .info-row {
                display: flex;
                margin-bottom: 0.5rem;
            }
            
            .info-label {
                font-weight: 500;
                width: 90px;
                color: var(--university-color);
            }
            
            .info-value {
                flex: 1;
                color: #555;
            }
            
            .barcode {
                margin-top: 1rem;
                text-align: center;
                padding: 0.5rem;
                background: #f5f5f5;
                font-family: 'Libre Barcode 128', cursive;
                font-size: 1.8rem;
                letter-spacing: 1px;
            }
            
            .btn-container {
                text-align: center;
                margin-top: 2rem;
                margin-bottom: 2rem;
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
                animation: fadeIn 0.4s ease-out forwards;
                animation-delay: calc(var(--order) * 0.1s);
            }
            
            /* Responsive design */
            @media (max-width: 768px) {
                .student-grid {
                    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
                    gap: 1.5rem;
                }
            }
            
            @media (max-width: 480px) {
                body {
                    padding: 1rem;
                }
                
                .student-grid {
                    grid-template-columns: 1fr;
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Student Register</h1>
            
            <% 
                List<StudentCard> studentCards = (List<StudentCard>)request.getAttribute("list");
                int studentCount = studentCards.size();
            %>
            
            <div class="student-count">
                Showing <span class="count-number"><%= studentCount %></span> student(s) in the register
            </div>
            
            <div class="student-grid">
                <% 
                    for(int i = 0; i < studentCards.size(); i++) {
                        StudentCard sc = studentCards.get(i);
                        Long studentNumber = sc.getId();
                        String name = sc.getName();
                        String surname = sc.getSurname();
                        String faculty = sc.getFaculty();
                        String coursecode = sc.getCoursecode();
                        String barcode = "*" + studentNumber.toString() + "*";
                %>
                <div class="student-card" style="--order: <%= i %>">
                    <div class="card-header">
                        <div class="card-type">STUDENT ID</div>
                        <h2 class="university-name">UNIVERSITY OF TECHNOLOGY</h2>
                    </div>
                    
                    <div class="card-body">
                        <div class="student-photo">
                            <%= name.charAt(0) %><%= surname.charAt(0) %>
                        </div>
                        
                        <h3 class="student-name"><%= name + " " + surname %></h3>
                        <div class="student-number"><%= studentNumber %></div>
                        
                        <div class="student-info">
                            <div class="info-row">
                                <div class="info-label">Faculty:</div>
                                <div class="info-value"><%= faculty %></div>
                            </div>
                            <div class="info-row">
                                <div class="info-label">Course:</div>
                                <div class="info-value"><%= coursecode %></div>
                            </div>
                        </div>
                        
                        <div class="barcode"><%= barcode %></div>
                    </div>
                </div>
                <% } %>
            </div>
            
            <div class="btn-container">
                <a href="lec.jsp" class="btn-back">Back to Lecturer Portal</a>
            </div>
        </div>
    </body>
</html>