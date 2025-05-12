

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Error Page</title>
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
                padding: 2rem;
                min-height: 100vh;
                color: var(--dark-color);
            }
            
            .container {
                max-width: 800px;
                margin: 0 auto;
                background-color: white;
                padding: 2rem;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            }
            
            h2 {
                color: var(--primary-color);
                margin-top: 0;
                text-align: center;
            }
            
            p {
                font-size: 1.1rem;
                line-height: 1.6;
                margin-bottom: 1.5rem;
            }
            
            .section {
                margin-bottom: 2rem;
                padding: 1.5rem;
                background-color: var(--light-color);
                border-radius: 8px;
                border-left: 4px solid var(--primary-color);
            }
            
            .section-title {
                color: var(--primary-color);
                margin-top: 0;
                margin-bottom: 1rem;
            }
            
            table {
                width: 100%;
                border-collapse: collapse;
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
                transition: border 0.3s;
            }
            
            input[type="text"]:focus {
                border-color: var(--primary-color);
                outline: none;
                box-shadow: 0 0 0 2px rgba(66, 133, 244, 0.2);
            }
            
            button[type="submit"] {
                background-color: var(--primary-color);
                color: white;
                border: none;
                padding: 0.75rem 1.5rem;
                border-radius: 4px;
                cursor: pointer;
                font-family: var(--font-main);
                font-size: 1rem;
                font-weight: 500;
                transition: all 0.3s;
            }
            
            button[type="submit"]:hover {
                background-color: #3367d6;
                transform: translateY(-1px);
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
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
                
                button[type="submit"] {
                    width: 100%;
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
        <h1>Login Error</h1>
        <p>Your login details are not valid Click the button below</p>
        <a href="menu.html">MENU</a>
    </body>
</html>
