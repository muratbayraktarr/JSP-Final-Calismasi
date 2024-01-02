<%-- 
    Document   : ekledb
    Created on : 2 Oca 2024, 17:41:56
    Author     : ByMazarat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.SqlData.getUsers" %>
<% 
    try{
    String name = (String)request.getParameter("name");
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("password");
    
    getUsers g1 = new getUsers();
    g1.addUser(name,username,password);

        out.println("Veri Kaydedildi");
    }catch(Exception e){
        out.println("Veri Kaydedilemedi");
    }
    
%>