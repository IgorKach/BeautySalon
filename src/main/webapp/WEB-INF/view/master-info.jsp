<%--
  Created by IntelliJ IDEA.
  User: dasad
  Date: 28.11.2021
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Тег SELECT</title>
</head>
<body>
    <p>Выберите нужного вам мастера и дату:</p>
    <div>
        <input type="radio" id="choiceMaster1"
               name="master" value="visajist">
        <label for="choiceMaster1">Визажист</label>

        <input type="radio" id="choiceMaster2"
               name="master" value="nails">
        <label for="choiceMaster2">Мастер маникюра</label>

        <input type="radio" id="choiceMaster3"
               name="master" value="hairdrier">
        <label for="choiceMaster3">Парикмахер</label>
    </div>
    <p>Выберите дату: <input type="date" name="calendar" min="2021-11-29">
    <p><input type="submit" value="Отправить" onClick='location.href="http://localhost:8080/BeautySalon_war/user"'></p>
</body>
</html>
