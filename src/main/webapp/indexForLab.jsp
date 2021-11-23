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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Таблица с днями недели</title>
</head>
<body>
<h3>Проверка библиотеки JSTL:</h3>
<c:set var="date" value="<%=new java.util.Date()%>" />
<p><b>Date and Time in Belarusian Standard Time(IST) Zone:</b>
    <fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long" /></p>
<fmt:setTimeZone value="GMT+2" />
<p><b>Date and Time in GMT+2 time Zone: </b>
    <fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long" /></p>

<h3>Проверка использования Скриплетов:</h3>
</h1><%

    LocalTime now = LocalTime.now();
    LocalTime morning=LocalTime.parse("04:00");
    LocalTime day=LocalTime.parse("12:00");
    LocalTime evening=LocalTime.parse("18:00");
    LocalTime night=LocalTime.parse("21:00");
    String resultTime=now.format(DateTimeFormatter.ofPattern("HH:mm"));
    if (now.isAfter(morning)&&now.isBefore(day))
        out.println("<h2>Доброе утро, Яна, сейчас "+resultTime);
    else if(now.isAfter(day)&& now.isBefore(evening))
        out.println("<h2>Добрый день, Яна, сейчас "+resultTime);
    else if(now.isAfter(evening)&& now.isBefore(night))
        out.println("<h2>Добрый вечер, Яна, сейчас "+resultTime);
    else
        out.println("<h2>Доброй ночи, Яна, сейчас "+resultTime);
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

    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd.MM.yyyy");


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
        <td><%out.println(now2.format(myFormatObj));%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek1));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow.format(myFormatObj));%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek2));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow1.format(myFormatObj));%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek3));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow2.format(myFormatObj));%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek4));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow3.format(myFormatObj));%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek5));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow4.format(myFormatObj));%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek6));%></td>
    </tr>
    <tr>
        <td><%out.println(tomorrow5.format(myFormatObj));%> </td>
        <td><%out.println(getDayOfWeek(dayOfWeek7));%></td>
    </tr>
</table>
</body>
</html>
