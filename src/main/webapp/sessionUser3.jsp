<%-- 
    Document   : sessionUser3
    Created on : 14 Kas 2023, 19:53:40
    Author     : ByMazarat
--%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="u1" class="com.usebean.UseBean" scope="session" />
<%@page import="com.session.User"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <table border="1px">
        <tr>
            <th> İsim </th>
            <th> Soyisim </th>
            <th> Yaş </th>
        </tr>
  
    <% 
        ArrayList<User> uL = (ArrayList<User>) session.getAttribute("UserList");
        if(uL != null){
            for(User u : uL){
            %>
            <tr>          
                <td> <%= u.getName() %> </td>
                <td> <%= u.getSurname() %> </td>
                <td> <%= u.getAge() %> </td>               
            </tr>
            <%
            }
        }        
    %>
    </table>
    <%= 
        u1.getAd()
    %>
</body>
</html>
