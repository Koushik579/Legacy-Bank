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
        <title>Signup Page</title>
        <script src="jquery.js"></script>
        <script src="angular.js"></script>
        <script src="script.js"></script>
        <link rel="stylesheet" href="masterStyle.css"/>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <%
            try {
                String user = request.getParameter("usernm");
                String email = request.getParameter("email");
                String pass = request.getParameter("pass1");

                Connection con = JdbcConnection.connect();

                if (con != null) {
                    out.println("<h1 style=\"color: green\">JDBC is connected Successfully</h1>");
                    out.println(user + " || " + email + " || " + pass);
                    String insertdata = "insert into userdetails(username,email,pass) values(?,?,?)";
                    PreparedStatement ps = con.prepareStatement(insertdata);
                    ps.setString(1, user);
                    ps.setString(2, email);
                    ps.setString(3, pass);
                    ps.executeUpdate();
                    
                    
                } else {
                    out.println("<h1 style=\"color: red\">JDBC is not connected __ Connection con is **null**</h1><br><br>");
                    out.println(user + " || " + email + " || " + pass);
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <div id="signupcont">
            <form action="index.html" method="post" id="signnuppageConfirm">
                <h1>Account Created Successfully</h1>
                <u>Redirect to the login page</u>
                <br>
                <br>
                <button type="submit">Login page</button>
            </form>
        </div>
    </body>
</html>
