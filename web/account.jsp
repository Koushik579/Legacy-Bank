<%-- 
    Document   : account
    Created on : Dec 18, 2025, 11:05:16 AM
    Author     : username
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jquery.js"></script>
        <script src="angular.js"></script>
        <script src="script.js"></script>
        <link rel="stylesheet" href="masterStyle.css"/>
        <link rel="stylesheet" href="style.css" />       
        <title>ACCOUNT Legacy bank</title>
    </head>
    <body>
        <%
            HttpSession ses = request.getSession();
            if (ses == null || ses.getAttribute("username") == null) {
                request.setAttribute("error", "Enter a valid Username - Password");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
        <form action="logoutConfirm">
            <h1>Account Page</h1>
            <button type="submit">Logout</button>
        </form>
    </body>
</html>
