<%-- 
    Document   : session2
    Created on : 14 Kas 2023, 19:33:23
    Author     : ByMazarat
--%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <% 
      String name = request.getParameter("name");  
      String surname = request.getParameter("surname");
      int age = Integer.parseInt(request.getParameter("age"));
      session.setAttribute("name", name);
      session.setAttribute("surname", surname);
      session.setAttribute("age", age);
      
      
    %>
    <table border="1px">
        <tr>
            <th> İsim </th>
            <th> Soyisim </th>
            <th> Yaş </th>
        </tr>
        <tr>
            <td>
            <%= 
                session.getAttribute("name")
            %>
            </td>
            <td>
            <%= 
                session.getAttribute("surname")
            %>
            </td>
            <td>
            <%=
                session.getAttribute("age")
            %>
            </td>
        </tr>
    </table>
</body>
</html>
