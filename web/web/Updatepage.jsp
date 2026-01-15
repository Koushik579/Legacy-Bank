<%-- 
    Document   : Updatepage
    Created on : Jan 15, 2026, 12:30:58 PM
    Author     : Koushik
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
        <div style="display: flex; flex-direction: column; justify-content: center; align-items: center">
            <div>
                <h1 style="font-size: 35px; color: #0047AB"><u>Customers</u></h1>
            </div>
            <div id="account_icon_up"">
                <a href="<%=request.getContextPath()%>/web/account.jsp">
                    <img src="<%=request.getContextPath()%>/images/account_icon.png" width="32px" height="32px" title="Account Page"/>
                </a>
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
                                        out.println("<form action=\"" + request.getContextPath() + "/Updaterow\" method=\"post\">");
                                        out.println("<tr>");
                                        out.println("<td><input type=\"text\" value=\"" + rs.getString("uname") + "\" name=\"user\" style=\"width: 240px; cursor: not-allowed\" readonly/></td>");
                                        out.println("<td><input type=\"text\" value=\"" + rs.getString("fname") + "\" name=\"fstname\" style=\"width: 240px\"/></td>");
                                        out.println("<td><input type=\"text\" value=\"" + rs.getString("lname") + "\" name=\"lstname\" style=\"width: 240px\"/></td>");
                                        out.println("<td><input type=\"text\" value=\"" + rs.getString("email") + "\" name=\"emailid\" style=\"width: 240px\"/></td>");
                                        out.println("<td><input type=\"text\" value=\"" + rs.getString("phn") + "\" name=\"phone\" style=\"width: 240px\"/></td>");
                                        out.println(
                                                "<td><button type=\"submit\" id=\"up_btn\" "
                                                + "style=\"background-image: url('" + request.getContextPath() + "/images/update_icon.png');\" "
                                                + "aria-label=\"Delete\" title=\"Update\"></button></td>"
                                        );
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
            <form action="<%= request.getContextPath()%>/logoutConfirm" method="post">
                <div>
                    <p style="color: red">${dberror}</p>
                    <br><br>
                    <button type="submit">Logout</button>
                </div>
            </form>
        </div>
    </body>
</html>
