<%-- 
    Document   : lec
    Created on : 11 May 2025, 3:21:09 PM
    Author     : matom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecturer Page</title>
        <style>
            /* Consistent theme styling */
            :root {
                --primary-color: #4285f4;
                --secondary-color: #34a853;
                --accent-color: #fbbc05; /* Yellow for lecturer */
                --danger-color: #ea4335;
                --light-color: #f8f9fa;
                --dark-color: #202124;
                --font-main: 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            }
            
            body {
                font-family: var(--font-main);
                background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
                margin: 0;
                padding: 2rem;
                min-height: 100vh;
                color: var(--dark-color);
            }
            
            .container {
                max-width: 900px;
                margin: 0 auto;
                background-color: white;
                padding: 2rem;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            }
            
            h1 {
                color: var(--accent-color);
                text-align: center;
                margin-bottom: 1rem;
            }
            
            p {
                font-size: 1.1rem;
                line-height: 1.6;
                text-align: center;
                margin-bottom: 2rem;
            }
            
            b {
                color: var(--accent-color);
            }
            
            .action-section {
                margin-bottom: 2.5rem;
                padding: 1.5rem;
                background-color: var(--light-color);
                border-radius: 8px;
                border-left: 4px solid var(--accent-color);
            }
            
            .section-title {
                color: var(--accent-color);
                margin-top: 0;
                margin-bottom: 1.5rem;
                font-size: 1.3rem;
            }
            
            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 1rem;
            }
            
            td {
                padding: 0.75rem;
                vertical-align: middle;
            }
            
            input[type="text"] {
                width: 100%;
                padding: 0.75rem;
                border: 1px solid #ddd;
                border-radius: 4px;
                font-family: var(--font-main);
                font-size: 1rem;
                transition: all 0.3s;
            }
            
            input[type="text"]:focus {
                border-color: var(--accent-color);
                outline: none;
                box-shadow: 0 0 0 2px rgba(251, 188, 5, 0.2);
            }
            
            input[type="submit"] {
                background-color: var(--accent-color);
                color: var(--dark-color);
                border: none;
                padding: 0.75rem 1.5rem;
                border-radius: 4px;
                cursor: pointer;
                font-family: var(--font-main);
                font-size: 1rem;
                font-weight: 600;
                transition: all 0.3s;
            }
            
            input[type="submit"]:hover {
                background-color: #e8ac00;
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            }
            
            .delete-btn {
                background-color: var(--danger-color);
                color: white;
            }
            
            .delete-btn:hover {
                background-color: #d33426;
            }
            
            .view-btn {
                background-color: var(--primary-color);
                color: white;
            }
            
            .view-btn:hover {
                background-color: #3367d6;
            }
            
            /* Animation */
            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(20px); }
                to { opacity: 1; transform: translateY(0); }
            }
            
            .container {
                animation: fadeIn 0.6s ease-out forwards;
            }
            
            /* Responsive design */
            @media (max-width: 768px) {
                body {
                    padding: 1rem;
                }
                
                .container {
                    padding: 1rem;
                }
                
                td {
                    display: block;
                    width: 100%;
                    padding: 0.5rem 0;
                }
                
                input[type="submit"] {
                    width: 100%;
                    margin-top: 0.5rem;
                }
            }
            
            a {
                display: inline-block;
                background-color: var(--primary-color);
                color: white;
                text-decoration: none;
                padding: 12px 24px;
                border-radius: 30px;
                font-weight: 600;
                margin-top: 20px;
                transition: all 0.3s ease;
                box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            }
            
            a:hover {
                background-color: var(--secondary-color);
                transform: translateY(-2px);
                box-shadow: 0 6px 8px rgba(0,0,0,0.15);
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Lecturer Control Panel</h1>
            <p>
                As a lecturer you can Add a student, View all students,Search a student, Update student details, and Delete a student. <br>
                <b>YOU ARE IN CHARGE!!</b>
            </p>
            
            <div class="action-section">
                <h3 class="section-title">Add New Student</h3>
                <form action="addStudentServlet.do" method="post">
                    <table>
                        <tr>
                            <td>Student Number</td>
                            <td><input type="text" name="studNumber" required/></td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td><input type="text" name="name" required/></td>
                        </tr>
                        <tr>
                            <td>Surname</td>
                            <td><input type="text" name="surname" required/></td>
                        </tr>
                        <tr>
                            <td>Faculty</td>
                            <td><input type="text" name="faculty" required/></td>
                        </tr>
                        <tr>
                            <td>Course Code</td>
                            <td><input type="text" name="coursecode" required/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="ADD STUDENT"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            
            <div class="action-section">
                <h3 class="section-title">View All Students</h3>
                <form action="viewAllStudentsServlet.do" method="get">
                    <table>
                        <tr>
                            <td></td>
                            <td><input type="submit" class="view-btn" value="VIEW ALL STUDENTS"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            
            <div class="action-section">
                <h3 class="section-title">Update Student Record</h3>
                <form action="updateStudentCardServlet.do" method="post">
                    <table>
                        <tr>
                            <td>Student Number</td>
                            <td><input type="text" name="studNumber" required/></td>
                        </tr>
                        <tr>
                            <td>Surname</td>
                            <td><input type="text" name="surname" required/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="UPDATE RECORD"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            
            <div class="action-section">
                <h3 class="section-title">Search Student</h3>
                <form action="searchStudentServlet.do" method="post">
                    <table>
                        <tr>
                            <td>Student Number</td>
                            <td><input type="text" name="studentNumber" required/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="SEARCH STUDENT"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            
            <div class="action-section">
                <h3 class="section-title">Delete Student</h3>
                <form action="deleteStudentServlet.do" method="post">
                    <table>
                        <tr>
                            <td>Student Number</td>
                            <td><input type="text" name="studNumber" required/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" class="delete-btn" value="DELETE STUDENT"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="action-section">
                <a href="menu.html">MENU</a> <a href="LogoutServlet.do">LOGOUT</a>
            </div>
        </div>
    </body>
</html>