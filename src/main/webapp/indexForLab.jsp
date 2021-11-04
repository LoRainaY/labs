<%@ page import="java.time.LocalTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="static java.lang.System.out" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.DayOfWeek" %><%--
  Created by IntelliJ IDEA.
  User: Яна
  Date: 24.10.2021
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Таблица с днями недели</title>
</head>
<body>
</h1><%

    LocalTime now = LocalTime.now();
    LocalTime morning=LocalTime.parse("04:00");
    LocalTime day=LocalTime.parse("12:00");
    LocalTime evening=LocalTime.parse("18:00");
    LocalTime night=LocalTime.parse("21:00");
    Boolean isMorning=LocalTime.now().isAfter(morning);
    if (now.isAfter(morning)&&now.isBefore(day))
        out.println("<h2>Доброе утро, Яна. Сейчас "+now.format(DateTimeFormatter.ofPattern("HH:mm")));
    else if(now.isAfter(day)&& now.isBefore(evening))
        out.println("<h2>Добрый день, Яна. Сейчас "+now.format(DateTimeFormatter.ofPattern("HH:mm")));
    else if(now.isAfter(evening)&& now.isBefore(night))
        out.println("<h2>Добрый вечер, Яна. Сейчас "+now.format(DateTimeFormatter.ofPattern("HH:mm")));
    else
        out.println("<h2>Доброй ночи, Яна. Сейчас "+now.format(DateTimeFormatter.ofPattern("HH:mm")));
%>
<%  LocalDate now2=LocalDate.now();
    LocalDate tomorrow = LocalDate.now().plusDays(1);
    LocalDate tomorrow1 = LocalDate.now().plusDays(2);
    LocalDate tomorrow2 = LocalDate.now().plusDays(3);
    LocalDate tomorrow3 = LocalDate.now().plusDays(4);
    LocalDate tomorrow4 = LocalDate.now().plusDays(5);
    LocalDate tomorrow5 = LocalDate.now().plusDays(6);

    DayOfWeek dayOfWeek1 = now2.getDayOfWeek();
    DayOfWeek dayOfWeek2 = tomorrow.getDayOfWeek();
    DayOfWeek dayOfWeek3 = tomorrow1.getDayOfWeek();
    DayOfWeek dayOfWeek4 = tomorrow2.getDayOfWeek();
    DayOfWeek dayOfWeek5 = tomorrow3.getDayOfWeek();
    DayOfWeek dayOfWeek6 = tomorrow4.getDayOfWeek();
    DayOfWeek dayOfWeek7 = tomorrow5.getDayOfWeek();
%>
 <%! String getDayOfWeek(DayOfWeek dayOfWeek){
        switch (dayOfWeek){
            case MONDAY:return "1";
            case TUESDAY:return "2";
            case WEDNESDAY:return "3";
            case THURSDAY:return "4";
            case FRIDAY:return "5";
            case SATURDAY:return "6";
            case SUNDAY:return "7";
        }
        return dayOfWeek.toString();
    }%>

<table align="center" >
    <style type="text/css">
        TABLE {width: 30%; background:Khaki;}
        td {text-align: center; width:30%  }/* Выравнивание по правому краю */

    </style>
    <tr>
        <th>Дата</th>
        <th>Номер дня недели</th>
    </tr>
    <tr>
        <td><%out.println(now2.toString());%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek1));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow.toString());%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek2));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow1.toString());%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek3));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow2.toString());%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek4));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow3.toString());%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek5));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow4.toString());%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek6));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow5.toString());%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek7));%></td>
    </tr>
</table>
</body>
</html>
