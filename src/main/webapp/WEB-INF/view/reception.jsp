<%--
  Created by IntelliJ IDEA.
  User: dasad
  Date: 28.11.2021
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Beauty Salon</title>
</head>
<body>
<form action="test" method="get">
    <center>Запись к мастеру</center>
    Имя:     <input name="Имя" value=""><br>
    E-mail:  <input name="E-mail" value=""><br>
    Телефон: <input name="Телефон" value=""><br>
    <input type="button" value="Записаться" onClick='location.href="http://localhost:8080/BeautySalon_war/user"'>

</form>
</body>
</html>
