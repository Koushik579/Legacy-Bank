package com.koushik.servlet.confirmation;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.koushik.jdbc.JdbcConnection;
import java.sql.*;
import org.mindrot.jbcrypt.*;

/**
 *
 * @author username
 */
public class signupConfirm extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                String user = request.getParameter("usernm");
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String pass1 = request.getParameter("pass1");
                String pass2 = request.getParameter("pass2");
                String email = request.getParameter("email");
                String phn = request.getParameter("phn");
                if (!pass1.equals(pass2)) {
                    request.setAttribute("error", "Passwords are not same");
                    request.getRequestDispatcher("/web/index.jsp").forward(request, response);
                } else {
                    Connection con = JdbcConnection.connect();
                    con.setAutoCommit(false);
                    if (con != null) {
                        out.println("<h1 style=\"color: green\">JDBC is connected Successfully</h1>");
                        // out.println(user + " || " + email + " || " + pass);
                        String hashpass = BCrypt.hashpw(pass2, BCrypt.gensalt());
                        String insertdata = "insert into customers values(?,?,?,?,?,?)";
                        PreparedStatement ps = con.prepareStatement(insertdata);
                        ps.setString(1, user);
                        ps.setString(2, fname);
                        ps.setString(3, lname);
                        ps.setString(4, hashpass);
                        ps.setString(5, email);
                        ps.setString(6, phn);
                        ps.executeUpdate();
                        con.commit();
                        response.sendRedirect(request.getContextPath()+"/web/Confirmsignup.jsp");
                    } else {
                        con.rollback();
                        out.println("<h1 style=\"color: red\">JDBC is not connected __ Connection con is **null**</h1><br><br>");
                        //out.println(user + " || " + email + " || " + pass);
                    }

                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }

}
