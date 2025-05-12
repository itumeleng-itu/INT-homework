<%-- 
    Document   : tutor
    Created on : 11 May 2025, 3:20:33 PM
    Author     : matom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutor Page</title>
        <style>
            /* Consistent theme styling */
            :root {
                --primary-color: #4285f4;
                --secondary-color: #34a853;
                --accent-color: #ea4335;
                --light-color: #f8f9fa;
                --dark-color: #202124;
                --font-main: 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
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
                background-color: white;
                padding: 2.5rem;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
                width: 90%;
                max-width: 600px;
            }

            h2 {
                color: var(--accent-color); /* Different color for tutor role */
                margin-top: 0;
                text-align: center;
                margin-bottom: 1.5rem;
            }

            p {
                font-size: 1.1rem;
                line-height: 1.6;
                text-align: center;
                margin-bottom: 2rem;
                color: #555;
            }

            .search-section {
                background-color: var(--light-color);
                padding: 1.5rem;
                border-radius: 8px;
                border-left: 4px solid var(--accent-color);
            }

            .section-title {
                color: var(--accent-color);
                margin-top: 0;
                margin-bottom: 1.5rem;
                text-align: center;
                font-size: 1.3rem;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin: 0 auto;
            }

            td {
                padding: 0.75rem;
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
                box-shadow: 0 0 0 2px rgba(234, 67, 53, 0.2);
            }

            input[type="submit"] {
                background-color: var(--accent-color);
                color: white;
                border: none;
                padding: 0.75rem 1.5rem;
                border-radius: 4px;
                cursor: pointer;
                font-family: var(--font-main);
                font-size: 1rem;
                font-weight: 500;
                width: 100%;
                transition: all 0.3s;
            }

            input[type="submit"]:hover {
                background-color: #d33426;
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            }

            /* Animation */
            @keyframes fadeIn {
                from {
                    opacity: 0;
                    transform: translateY(20px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .container {
                animation: fadeIn 0.6s ease-out forwards;
            }

            /* Responsive design */
            @media (max-width: 600px) {
                .container {
                    padding: 1.5rem;
                    width: 85%;
                }

                td {
                    display: block;
                    width: 100%;
                    padding: 0.5rem 0;
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
            <h2>Hi, your service is appreciated.</h2>
            <p>Your role is to search for any student</p>

            <div class="search-section">
                <h3 class="section-title">Search for a student</h3>
                <form action="searchStudentServlet.do" method="post">
                    <table>
                        <tr>
                            <td><label for="studentNumber">Student number</label></td>
                        </tr>
                        <tr>
                            <td><input type="text" id="studentNumber" name="studentNumber" required/></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Search" /></td>
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