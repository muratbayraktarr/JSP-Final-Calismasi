<%-- 
    Document   : sessionUser
    Created on : 14 Kas 2023, 19:45:54
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
    <form action="sessionUser2.jsp" method="POST">
        1. İsim<input type="text" name="name" /><br/>
        1. Soyisim<input type="text" name="surname" /><br/>
        1. Yaş<input type="text" name="age"/><br/>
        2. İsim<input type="text" name="name2" /><br/>
        2. Soyisim<input type="text" name="surname2" /><br/>
        2. Yaş<input type="text" name="age2"/><br/>
        <input type="submit" />
    </form>
</body>
</html>
