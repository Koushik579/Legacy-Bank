package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import javaClass.JdbcConnection;
import java.sql.*;

/**
 *
 * @author Koushik
 */
public class loginConfirm extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {
                HttpSession session = request.getSession();
                String u = request.getParameter("userid");
                session.setAttribute("username", u);
                String p = request.getParameter("pass");
                session.setAttribute("password", p);

                String username = session.getAttribute("username").toString();
                String password = session.getAttribute("password").toString();
                Connection con = JdbcConnection.connect();
                String checkusersql = "select 1 from userdetails where username = ?";
                String checkpasssql = "select pass from userdetails where username = ?";
                PreparedStatement ps1 = con.prepareStatement(checkusersql);
                ps1.setString(1, username);

                ResultSet rs1 = ps1.executeQuery();
                rs1.next();

                boolean isuser = rs1.getBoolean(1);

                if (isuser == true) {
                    PreparedStatement ps2 = con.prepareStatement(checkpasssql);
                    ps2.setString(1, username);

                    ResultSet rs2 = ps2.executeQuery();

                    String checkpass = null;
                    if (rs2.next()) {
                        checkpass = rs2.getString("pass");
                        if (password.equals(checkpass)) {
                            response.sendRedirect("account.jsp");
                            System.out.println("login Successsful....");
                            return;
                        } else {
                            out.println("Login id or pass wrong");
                            //System.out.println(password);
                            //System.out.println(checkpass);
                            request.setAttribute("error", "Invalid Username or Password");
                            request.getRequestDispatcher("index.jsp").forward(request, response);
                            return;
                        }
                    }

                } else {
                    request.setAttribute("error", "Invalid Username or Password");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    return;

                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
