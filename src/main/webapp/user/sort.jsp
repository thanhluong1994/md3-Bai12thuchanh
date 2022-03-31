<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 30/03/2022
  Time: 11:14 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/UserServlet?action=user">List All Users</a>
    </h2>
</center>
<center>
    <form method="post">

        <caption>
            <h2>Sort User By Name</h2>
        </caption>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="sort" style="width: 10%"/>
            </td>
        </tr>
    </form>
</center>
<center>
<form method="post">

    <caption>
        <h2>Sort User By ID</h2>
    </caption>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="sort" style="width:10%"/>
        </td>
    </tr>

</form>
</center>
</body>
</html>

