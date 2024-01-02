<%-- 
    Document   : hashmap2Dictionary
    Created on : 2 Oca 2024, 20:18:35
    Author     : ByMazarat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.hashmap.Dictionary" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <% 
        Dictionary d1 = new Dictionary();
        String key = (String) request.getParameter("key");
        
    %>
    <%= d1.getHash(key) %>
</body>
</html>
