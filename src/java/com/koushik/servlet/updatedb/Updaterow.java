package com.koushik.servlet.updatedb;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
import com.koushik.jdbc.JdbcConnection;

/**
 *
 * @author Koushik
 */
public class Updaterow extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Connection con = JdbcConnection.connect();
            try {
                con.setAutoCommit(false);
                String check = request.getParameter("action");
                    String uname = request.getParameter("user");
                    String fname = request.getParameter("fstname");
                    String lname = request.getParameter("lstname");
                    String email = request.getParameter("emailid");
                    String phn = request.getParameter("phone");
                    PreparedStatement ps = con.prepareStatement("update customers set fname=?,lname=?,email=?,phn=? where uname=?");
                    ps.setString(1, fname);
                    ps.setString(2, lname);
                    ps.setString(3, email);
                    ps.setString(4, phn);
                    ps.setString(5, uname);
                    ps.executeUpdate();
                    con.commit();
                    request.getRequestDispatcher("/web/account.jsp").forward(request, response);
            } catch (Exception e) {
                con.rollback();
                request.setAttribute("dberror", "No data Updated");
                request.getRequestDispatcher("/web/account.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            System.getLogger(Updaterow.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            System.getLogger(Updaterow.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
