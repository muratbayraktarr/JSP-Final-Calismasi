<%-- 
    Document   : cookie2
    Created on : 14 Kas 2023, 19:21:19
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
    <% 
        String a = request.getParameter("name");
        Cookie c = new Cookie("UserName", a);
        response.addCookie(c);
        
        Cookie[] dizi = request.getCookies();
        String CookiedenGelen = null;
        if(dizi != null){
            for (Cookie d : dizi){
                if(d.getName().equals("UserName")){
                    CookiedenGelen = d.getValue();
                    break;
                }
            }
        }
        out.println(CookiedenGelen);
    
    %>
</body>
</html>
