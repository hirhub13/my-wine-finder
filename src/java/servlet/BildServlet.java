/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import database.DB_CachedConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import org.postgresql.jdbc2.optional.SimpleDataSource;

/**
 *
 * @author hirhu
 */
@WebServlet("/images/*")
public class BildServlet extends HttpServlet {

    // content=blob, name=varchar(255) UNIQUE.
    private static final String SQL_FIND = "SELECT \"Bild\" FROM \"Wein\" WHERE \"WeinID\" = ?";
    private DB_CachedConnection conn;

    public BildServlet() {
        conn = DB_CachedConnection.getInstance();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String imageName = request.getPathInfo().substring(1).replace(".png", ""); // Returns "foo.png".
            Connection connection = conn.getConnection();
            try (PreparedStatement statement = connection.prepareStatement(SQL_FIND)) {
                statement.setInt(1, Integer.parseInt(imageName));
                
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        byte[] content = resultSet.getBytes("bild");
                        response.setContentType(getServletContext().getMimeType(imageName));
                        response.setContentLength(content.length);
                        response.getOutputStream().write(content);
                    } else {
                        response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404.
                    }
                }
            } catch (SQLException e) {
                throw new ServletException("Something failed at SQL/DB level.", e);
            }
            conn.releaseConnection(connection);
        } catch (Exception ex) {
            throw new ServletException("Something failed at SQL/DB level.", ex);
        }
    }
}
