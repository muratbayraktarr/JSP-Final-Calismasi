<%-- 
    Document   : okudb
    Created on : 2 Oca 2024, 17:01:33
    Author     : ByMazarat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.Model.User" %>
<%@page import="com.SqlData.getUsers" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
       getUsers g1 = new getUsers();
       ArrayList<User> list = g1.getUser();
    %>
    
    <table border="1px">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Username</th>
            <th>Password</th>
        </tr>
        <% for (User u1 : list){ %>
        <tr>
            <td><%= u1.getId() %></td>
            <td><%= u1.getName() %></td>
            <td><%= u1.getUsername() %></td>
            <td><%= u1.getPassword() %></td>
        </tr>
        <% }%>
    </table>
    
</body>
</html>
