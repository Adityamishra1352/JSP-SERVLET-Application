<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            background-color: #f5f5f5;
        }
        .error-container {
            background-color: #fee;
            border: 1px solid #fcc;
            padding: 20px;
            border-radius: 5px;
            max-width: 600px;
            margin: 0 auto;
        }
        h1 {
            color: #c00;
        }
        a {
            color: #0066cc;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Error 404 - Page Not Found</h1>
        <p>Sorry, the page you requested could not be found.</p>
        <p>Error Code: <%= request.getAttribute("javax.servlet.error.status_code") %></p>
        <p><a href="/SimpleJspApp/index.jsp">Go back to Home</a></p>
    </div>
</body>
</html>
