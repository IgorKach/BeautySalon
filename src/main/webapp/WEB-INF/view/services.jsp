<%--
  Created by IntelliJ IDEA.
  User: dasad
  Date: 28.11.2021
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
    <title>Салон красоты</title>
    <link rel="stylesheet" href="file.css" type="text/css" />
</head>
<style>
    body {
        background: url(https://thumbs.dreamstime.com/z/%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%B0-%D0%BF%D0%B0%D1%80%D0%B8%D0%BA%D0%BC%D0%B0%D1%85%D0%B5%D1%80%D1%81%D0%BA%D0%BE%D0%B9-%D1%84%D0%BE%D0%BD-%D0%B2%D0%B8%D0%BD%D1%82%D0%B0%D0%B6%D0%BD%D0%BE%D0%B3%D0%BE-%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%B0-%D1%8D%D0%BB%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2-%D1%81%D0%B0%D0%BB%D0%BE%D0%BD%D0%B0-184981509.jpg) repeat-x fixed;
    }
</style>
<body>
<div class="werty">
    <div id="header">
        <h2 align="center">Выберите услугу и мастера которые вам нужны!</h2>
    </div>
    <div id="services">
        <ul class="nav">
            <p>Выберите нужную услугу и мастера:</p>
            <div>

                <input type="radio" id="choiceService1"
                       name="service" value="nail">
                <label for="choiceService1">Маникюр</label>
                <form>
                    <select size 3 name = "NailMaster">
                        <option value='Анастасия'>Анастасия</option>
                        <option value='Владислава'>Владислава</option>
                        <option value='Анна'>Анна</option>
                    </select>
                </form>
                <input type="radio" id="choiceService2"
                       name="service" value="hair">
                <label for="choiceService2">Уход за волосами</label>

                <form>
                    <select size 3 name = "Hairdrier">
                        <option value='Яна'>Яна</option>
                        <option value='Мария'>Мария</option>
                        <option value='Елена'>Елена</option>
                    </select>
                </form>

                <input type="radio" id="choiceService3"
                       name="service" value="leather">
                <label for="choiceService3">Уход за кожей</label>
                <form>
                    <select size 3 name = "leatherMaster">
                        <option value='Светлана'>Светлана</option>
                        <option value='Галина'>Галина</option>
                        <option value='Ира'>Ира</option>
                    </select>
                </form>
            </div>
            <p>Выберите дату: <input type="date" name="calendar" min="2021-11-29">
            <p><input type="submit" value="Отправить" onClick='location.href="http://localhost:8080/BeautySalon_war/user"'></p>
        </ul>
    </div>
</div>
</body>
</html>
