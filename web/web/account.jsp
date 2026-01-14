<%-- 
    Document   : account
    Created on : Dec 18, 2025, 11:05:16 AM
    Author     : username
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.*" %>
<%@page import="java.sql.*" %>
<%@page import="com.koushik.jdbc.JdbcConnection" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/masterStyle.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/style.css">

        <script src="<%= request.getContextPath()%>/js/jquery.js"></script>
        <script src="<%= request.getContextPath()%>/js/angular.js"></script>
        <script src="<%= request.getContextPath()%>/js/script.js"></script>       
        <title>Customers</title>
    </head>
    <body>
        <%
            HttpSession ses = request.getSession(false);
            if (ses == null || ses.getAttribute("username") == null) {
                request.setAttribute("error", "Enter a valid Username - Password");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
        <form action="logoutConfirm">
            <div style="display: flex; flex-direction: column; justify-content: center; align-items: center">
                <div>
                    <h1 style="font-size: 35px; color: #5CC3FF"><u>Customers</u></h1>
                </div>
                <div>
                    <table>
                        <tr style="background-color: #5CC3FF">
                            <th>Username</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone No.</th>
                                <%
                                    Connection con = JdbcConnection.connect();
                                    PreparedStatement ps = con.prepareStatement("select * from customers");
                                    ResultSet rs = ps.executeQuery();
                                    while (rs.next()) {
                                        try {
                                            out.println("<form action=\"Updatedb\" method=\"post\">");
                                            out.println("<tr>");
                                            out.println("<td><input type=\"text\" value=\"" + rs.getString("uname") + "\" style=\"width: 240px; cursor: not-allowed\" readonly/></td>");
                                            out.println("<td><input type=\"text\" value=\"" + rs.getString("fname") + "\" style=\"width: 240px\"/></td>");
                                            out.println("<td><input type=\"text\" value=\"" + rs.getString("lname") + "\" style=\"width: 240px\"/></td>");
                                            out.println("<td><input type=\"text\" value=\"" + rs.getString("email") + "\" style=\"width: 240px\"/></td>");
                                            out.println("<td><input type=\"text\" value=\"" + rs.getString("phn") + "\" style=\"width: 240px\"/></td>");

                                            out.println("<td><button type=\"submit\" style=\"height: 24px; width: 22px; background-color: white; margin: 5px\" ><img  src=\""
                                                    + request.getContextPath()
                                                    + "/images/update.png\" style=\"height: 24px; width: 24px\" /></button></td>");

                                            out.println("<td><button type=\"submit\" style=\"height: 24px; width: 22px; background-color: white; margin: 5px\" ><img src=\""
                                                    + request.getContextPath()
                                                    + "/images/delete.png\" style=\"height: 24px; width: 24px\" /></button></td>");

                                            out.println("</tr>");
                                            out.println("</form>");
                                        } catch (Exception e) {
                                            String errormg = e.getMessage();
                                            out.println("<script>alert(\"" + errormg + "\")</script>");
                                        }
                                    }
                                %>
                        </tr>
                    </table>
                </div>
                <br><br>
                <div>
                    <button type="submit">Logout</button>
                </div>
            </div>
        </form>
    </body>
</html>
