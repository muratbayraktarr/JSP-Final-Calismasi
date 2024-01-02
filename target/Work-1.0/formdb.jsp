<%-- 
    Document   : formdb.jsp
    Created on : 2 Oca 2024, 17:41:41
    Author     : ByMazarat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <form action="ekledb.jsp" method="POST">
        İsim : <input type="text" name="name">
        Kullanıcı Adı : <input type="text" name="username">
        Şifre : <input type="text" name="password">
        <input type="submit" value="Kaydet">
    </form>
</body>
</html>
