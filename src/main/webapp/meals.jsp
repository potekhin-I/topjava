<%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 11.10.2020
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Meals</title>
    <style>
        .normal{color: green}
        .exceeded{color: red}
    </style>
</head>
<body>
<h2><a href="index.html">Home</a></h2>
<h3>Meals</h3>
<hr>
<table border="1" cellpadding="8" cellspacing="0" >
    <thead>
    <tr>
        <td>Date</td>
        <td>Description</td>
        <td>Calories</td>
    </tr>
    </thead>
    <c:forEach items="${meals}" var= "meal">
        <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"/>
        <tr class="${meal.excess ? 'exceeded' : 'normal'}">
            <td>
                <fmt:parseDate value="${meal.dateTime}" pattern="y-M-dd'T'H:m" var = "parseDate"/>
                <fmt:formatDate value="${parseDate}" pattern="yyyy.MM.dd HH:mm"/>
            </td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
