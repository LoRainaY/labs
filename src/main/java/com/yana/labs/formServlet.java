package com.yana.labs;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "formservlet", value = "/formservlet")
public class formServlet extends HttpServlet {

        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            response.setContentType("text/html");
            response.setCharacterEncoding("UTF-8");


            PrintWriter writer = response.getWriter();

            String name = request.getParameter("p1");


            try {
                writer.println("<p>Ваше имя: " + name + "</p>");

            } finally {
                writer.close();
            }
        }

    public void destroy() {
    }
}