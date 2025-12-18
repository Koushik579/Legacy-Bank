<%-- 
    Document   : signupConfirm
    Created on : Dec 18, 2025, 2:54:56 PM
    Author     : username
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javaClass.JdbcConnection" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            JdbcConnection dbconnect = new JdbcConnection();
            Connection con = dbconnect.connect();
            Statement st = con.createStatement();
            String user = request.getParameter("usernm");
            String email = request.getParameter("email");
            String pass = request.getParameter("pass1");
            out.println(user+ "  "+email+" "+pass);
            
        %>
        <form action="index.html" method="post">
            <h1>Account Created Successfully</h1>
            <u>Redirect to the login page</u>
            <button type="submit">Login page</button>
        </form>
    </body>
</html>
