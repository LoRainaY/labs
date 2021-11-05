package com.yana.labs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servletcalc")
public class ServletCalc extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("calculator/html");


        try (PrintWriter writer = response.getWriter()) {

            String first = request.getParameter("first");
            String second = request.getParameter("second");
            String operation = request.getParameter("op");

            writer.println("<p>Name: " + first + "</p>");
            writer.println("<p>Age: " + second + "</p>");
            writer.println("<p>Age: " + operation + "</p>");

        }
    }
        }



