<%-- 
    Document   : hashmap
    Created on : 14 Kas 2023, 21:04:44
    Author     : ByMazarat
--%>
<%@page import="com.hashmap.Hash" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <% 
        Hash h1 = new Hash();
        
    %>
    <%= h1.getHash("Fransa") %>

    <% 
        h1.clearHash();
    %>

    <%= h1.getHash("Fransa") %>

    <% Hash h2 = new Hash(); %>
    <%= h2.getHash("Fransa") %>
</body>
</html>
