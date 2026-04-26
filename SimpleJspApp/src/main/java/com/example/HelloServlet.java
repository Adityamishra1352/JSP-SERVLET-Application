package com.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "helloServlet", urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the name parameter from the URL
        String name = request.getParameter("name");
        if (name == null || name.isEmpty()) {
            name = "Guest";
        }

        // Set the message in the request
        request.setAttribute("name", name);
        request.setAttribute("timestamp", System.currentTimeMillis());

        // Forward to the JSP page
        request.getRequestDispatcher("/hello.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle POST requests the same way as GET
        doGet(request, response);
    }
}
