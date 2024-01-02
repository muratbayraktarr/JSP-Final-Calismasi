<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>URL Parametreleri Alma</title>
</head>
<body>
    <h1>URL Parametreleri Alma</h1>
    <%-- URL'den "param" adında bir parametre al --%>
    <% String paramValue = request.getParameter("param"); %>
    
    <%-- Parametre değerini kontrol et ve ekrana yazdır --%>
    <% if(paramValue != null) { %>
        <p>URL'den alınan parametre değeri: <%= paramValue %></p>
    <% } else { %>
        <p>URL'den parametre alınamadı.</p>
    <% } %>
</body>
</html>
