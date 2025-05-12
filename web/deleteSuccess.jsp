<%-- 
    Document   : deleteSuccess
    Created on : 11 May 2025, 6:43:30 PM
    Author     : matom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Deleted | Student Management</title>
        <style>
            /* Consistent theme styling */
            :root {
                --primary-color: #4285f4;
                --secondary-color: #34a853;
                --danger-color: #ea4335;
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
                max-width: 500px;
                text-align: center;
            }
            
            .delete-icon {
                font-size: 4rem;
                color: var(--danger-color);
                margin-bottom: 1rem;
                animation: pulse 1.5s infinite;
            }
            
            @keyframes pulse {
                0% { transform: scale(1); }
                50% { transform: scale(1.1); }
                100% { transform: scale(1); }
            }
            
            h1 {
                color: var(--danger-color);
                margin-top: 0;
                margin-bottom: 1rem;
            }
            
            p {
                font-size: 1.1rem;
                line-height: 1.6;
                margin-bottom: 2rem;
                color: #555;
            }
            
            .btn-container {
                display: flex;
                justify-content: center;
                gap: 1rem;
                margin-top: 1.5rem;
            }
            
            .btn {
                display: inline-block;
                padding: 0.75rem 1.5rem;
                border-radius: 4px;
                font-weight: 600;
                transition: all 0.3s;
                text-decoration: none;
                cursor: pointer;
            }
            
            .btn-primary {
                background-color: var(--primary-color);
                color: white;
            }
            
            .btn-primary:hover {
                background-color: #3367d6;
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            }
            
            .btn-secondary {
                background-color: white;
                color: var(--primary-color);
                border: 1px solid var(--primary-color);
            }
            
            .btn-secondary:hover {
                background-color: #f1f3f4;
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
            @media (max-width: 600px) {
                .container {
                    padding: 1.5rem;
                }
                
                .btn-container {
                    flex-direction: column;
                    gap: 0.75rem;
                }
                
                .btn {
                    width: 100%;
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="delete-icon">×</div>
            <h1>Student Record Purged</h1>
            <p>The student record has been successfully removed from the system.</p>
            
            <div class="btn-container">
                <a href="lec.jsp" class="btn btn-primary">Back to Dashboard</a>
                <a href="deleteStudent.html" class="btn btn-secondary">Delete Another Student</a>
            </div>
        </div>
    </body>
</html>