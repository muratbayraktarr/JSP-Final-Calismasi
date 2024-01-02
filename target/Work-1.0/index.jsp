<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="u1" class="com.usebean.UseBean" scope="session"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        

        <%
            u1.setAd("Murat");
            u1.setSoyad("Bayraktar");
            String ad = u1.getAd();
            String soyad = u1.getSoyad();
        %>

        <p>Ad: <%= ad %></p>
        <p>Soyad: <%= soyad %></p>
    </body>
</html>
