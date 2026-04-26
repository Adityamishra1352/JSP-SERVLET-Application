<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP Servlet Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }
        .container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.2);
            text-align: center;
        }
        h1 {
            color: #333;
            margin-bottom: 10px;
        }
        p {
            color: #666;
            line-height: 1.6;
        }
        .features {
            text-align: left;
            margin: 30px 0;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
        }
        .features h2 {
            color: #667eea;
            margin-top: 0;
        }
        .features li {
            margin: 10px 0;
            color: #555;
        }
        .button-group {
            margin-top: 30px;
        }
        a, button {
            display: inline-block;
            padding: 12px 24px;
            margin: 5px;
            background-color: #667eea;
            color: white;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        a:hover, button:hover {
            background-color: #764ba2;
        }
        .info-box {
            background-color: #e8f4f8;
            padding: 15px;
            border-left: 4px solid #667eea;
            margin: 20px 0;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to JSP Servlet Application!</h1>
        <p>This is a simple, beginner-friendly web application demonstrating JSP and Servlet integration.</p>

        <div class="features">
            <h2>What's Included:</h2>
            <ul>
                <li><strong>Servlet:</strong> A Java class handling HTTP requests</li>
                <li><strong>JSP Pages:</strong> Dynamic HTML pages with Java code</li>
                <li><strong>Request Forwarding:</strong> Servlet forwards to JSP for rendering</li>
                <li><strong>Form Handling:</strong> Process user input and display results</li>
                <li><strong>Maven Configuration:</strong> Easy project management and builds</li>
            </ul>
        </div>

        <div class="info-box">
            <strong>Project Structure:</strong>
            <pre>SimpleJspApp/
├── src/
│   └── main/
│       ├── java/com/example/
│       │   └── HelloServlet.java
│       ├── webapp/
│       │   ├── WEB-INF/
│       │   │   └── web.xml
│       │   ├── index.jsp
│       │   ├── hello.jsp
│       │   └── error.jsp
│       └── resources/
├── pom.xml</pre>
        </div>

        <div class="button-group">
            <a href="/SimpleJspApp/hello">Try the Servlet</a>
            <a href="hello.jsp">View JSP Page</a>
        </div>

        <p style="margin-top: 30px; font-size: 0.9em; color: #999;">
            <strong>Next Steps:</strong> Modify the servlet and JSP to add more features like database connectivity, user authentication, etc.
        </p>
    </div>
</body>
</html>
