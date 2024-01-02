<%-- 
    Document   : sessionUser2
    Created on : 14 Kas 2023, 19:47:21
    Author     : ByMazarat
--%>
<%@page import="com.session.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <% 
      ArrayList<User> userListesi = new ArrayList<>();
      String name = request.getParameter("name");
      String surname = request.getParameter("surname");
      int age = Integer.parseInt(request.getParameter("age")) ;
      String name2 = request.getParameter("name2");
      String surname2 = request.getParameter("surname2");
      int age2 = Integer.parseInt(request.getParameter("age2")) ;

      User u1 = new User();
      User u2 = new User();
      
      u1.setName(name);
      u1.setSurname(surname);
      u1.setAge(age);
      u2.setName(name2);
      u2.setSurname(surname2);
      u2.setAge(age2);
      
      userListesi.add(u1);
      userListesi.add(u2);
      session.setAttribute("UserList",userListesi);
    %>
    <a href="sessionUser3.jsp">Sessiondan Verileri Çek</a>
</body>
</html>
