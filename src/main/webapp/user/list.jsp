<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 29/03/2022
  Time: 4:05 CH
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
    <a href="/UserServlet?action=create">Add New User</a> <br> <br>
    <a href="/UserServlet?action=sort">Sort User</a>
  </h2>
</center>
<div align="center">
  <table border="1" cellpadding="5">
    <caption><h2>List of Users</h2></caption>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
      <tr>
        <td><c:out value="${user.id}"/></td>
        <td><c:out value="${user.name}"/></td>
        <td><c:out value="${user.email}"/></td>
        <td><c:out value="${user.country}"/></td>
        <td>
          <a href="/UserServlet?action=edit&id=${user.id}">Edit</a>
          <a href="/UserServlet?action=delete&id=${user.id}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
<center>
  <h2>Search User</h2>
  <form method="post">
  </caption>
  <tr>
    <th>Country:</th>
    <td>
      <input type="text" name="country" id="country" size="15"/>
      <input type="text" name="action" value="search" hidden size="15"/>
    </td>
    <td colspan="2" align="center">
      <input type="submit" value="search"/>
    </td>
  </tr>
    </form>
</center>
</body>
</html>
