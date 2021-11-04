<%@ page import="java.time.LocalTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello world" %>
</h1><%

    LocalTime now = LocalTime.now();
    LocalTime morning=LocalTime.parse("04:00");
    LocalTime day=LocalTime.parse("12:00");
    LocalTime evening=LocalTime.parse("18:00");
    LocalTime night=LocalTime.parse("21:00");
    Boolean isMorning=LocalTime.now().isAfter(morning);
   if (now.isAfter(morning)&&now.isBefore(day))
        out.println("<h2>Доброе утро, Яна, сейчас "+now.format(DateTimeFormatter.ofPattern("HH:mm")));
   else if(now.isAfter(day)&& now.isBefore(evening))
       out.println("<h2>Добрый день, Яна, сейчас "+now.format(DateTimeFormatter.ofPattern("HH:mm")));
   else if(now.isAfter(evening)&& now.isBefore(night))
       out.println("<h2>Добрый вечер, Яна, сейчас "+now.format(DateTimeFormatter.ofPattern("HH:mm")));
   else
       out.println("<h2>Доброй ночи, Яна, сейчас "+now.format(DateTimeFormatter.ofPattern("HH:mm")));
%>


<br/>
<a href="hello-servlet">Hello Servlet</a>

<a href="forwardservlet">Лаб 1</a>
<a href="jjj">Лаб 2</a>
</body>
</html>