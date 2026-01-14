<%-- 
    Document   : signupConfirm
    Created on : Dec 18, 2025, 2:54:56 PM
    Author     : username
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.koushik.jdbc.JdbcConnection" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/masterStyle.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/style.css">

        <script src="<%= request.getContextPath()%>/js/jquery.js"></script>
        <script src="<%= request.getContextPath()%>/js/angular.js"></script>
        <script src="<%= request.getContextPath()%>/js/script.js"></script>
    </head>
    <body>
        <div id="signupcont">
            <form action="<%= request.getContextPath()%>/web/index.jsp" method="post" id="signnuppageConfirm">
                <h1 style="color: green">Account Created Successfully</h1>
                <u>Redirect to the login page</u>
                <br>
                <br>
                <button type="submit">Login page</button>
            </form>
        </div>
    </body>
</html>
