package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jdbc.JdbcConnection;
import java.sql.*;

/**
 *
 * @author username
 */
public class signupConfirm extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
                String pass = request.getParameter("pass1");
                String email = request.getParameter("email");
                String phn = request.getParameter("phn");
                

                Connection con = JdbcConnection.connect();

                if (con != null) {
                    out.println("<h1 style=\"color: green\">JDBC is connected Successfully</h1>");
                    // out.println(user + " || " + email + " || " + pass);

                    String insertdata = "insert into bankusers values(?,?,?,?,?,?)";
                    PreparedStatement ps = con.prepareStatement(insertdata);
                    ps.setString(1, user);
                    ps.setString(2, fname);
                    ps.setString(3, lname);
                    ps.setString(4, pass);
                    ps.setString(5, email);
                    ps.setString(6, phn);
                    ps.executeUpdate();

                    response.sendRedirect("Confirmsignup.jsp");

                } else {
                    out.println("<h1 style=\"color: red\">JDBC is not connected __ Connection con is **null**</h1><br><br>");
                    //out.println(user + " || " + email + " || " + pass);
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }

}
