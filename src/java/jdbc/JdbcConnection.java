package jdbc;

import java.sql.*;

/**
 *
 * @author Koushik
 */
public class JdbcConnection {

    private static final String url = "jdbc:postgresql://localhost:5432/legecybank";
    private static String user = "koushik";
    private static String pass = "admin";

    public static Connection connect() {
        Connection con = null;
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
