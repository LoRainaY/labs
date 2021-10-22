package com.yana.labs;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "forwardservlet", value = "/forwardservlet")
public class forwardServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        String path = "/text.html";
        ServletContext servletContext = getServletContext();//представляет контекст запроса
        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher(path);//получаем объект RequestDispatcher
        //Путь к ресурсу, на который надо выполнить перенаправление, передается в качестве параметра path
        requestDispatcher.forward(request, response);//из сервлета перенаправить запрос на страницу

    }

    public void destroy() {
    }
}