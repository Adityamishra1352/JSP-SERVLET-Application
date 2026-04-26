<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello JSP App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
        }
        .greeting {
            background-color: #e8f4f8;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
        }
        form {
            margin-top: 20px;
        }
        input[type="text"] {
            padding: 8px;
            width: 200px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            padding: 8px 15px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 10px;
        }
        button:hover {
            background-color: #0056b3;
        }
        .info {
            color: #666;
            font-size: 0.9em;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Simple JSP Servlet App!</h1>
        
        <% String name = (String) request.getAttribute("name"); %>
        
        <div class="greeting">
            <h2>Hello, <%= name %>!</h2>
            <p>This is a simple JSP page served by a servlet.</p>
        </div>

        <form action="/SimpleJspApp/hello" method="GET">
            <label for="username">Enter your name:</label><br>
            <input type="text" id="username" name="name" value="<%= name %>" placeholder="Enter name here">
            <button type="submit">Submit</button>
        </form>

        <div class="info">
            <p><strong>Server Time:</strong> <%= new java.util.Date(request.getAttribute("timestamp") != null ? 
                                                      (Long) request.getAttribute("timestamp") : System.currentTimeMillis()) %></p>
            <p><strong>Request Method:</strong> <%= request.getMethod() %></p>
            <p><strong>Application Context:</strong> <%= request.getContextPath() %></p>
        </div>
    </div>
</body>
</html>
