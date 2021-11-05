package com.yana.labs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "calculatorservlet", value = "/calculatorservlet")
public class calculatorServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       getServletContext().getRequestDispatcher("/calculator.html").forward(request, response);//из сервлета перенаправить запрос на страницу
    }
    public void destroy() {
    }
}
