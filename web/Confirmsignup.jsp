<%-- 
    Document   : signupConfirm
    Created on : Dec 18, 2025, 2:54:56 PM
    Author     : username
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jdbc.JdbcConnection" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        <script src="jquery.js"></script>
        <script src="angular.js"></script>
        <script src="script.js"></script>
        <link rel="stylesheet" href="masterStyle.css"/>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <div id="signupcont">
            <form action="index.jsp" method="post" id="signnuppageConfirm">
                <h1 style="color: green">Account Created Successfully</h1>
                <u>Redirect to the login page</u>
                <br>
                <br>
                <button type="submit">Login page</button>
            </form>
        </div>
    </body>
</html>
