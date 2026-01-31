package corner;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// Database connection parameters
    private String jdbcURL = "jdbc:mysql://localhost:3306/mandalayproject";
    private String jdbcUsername = "root"; 
    private String jdbcPassword = "root10&Htet";     
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("userName");
        String email = request.getParameter("email");
        String message = request.getParameter("userMessage");
        
        if (email == null || !email.matches("^[a-zA-Z0-9._%+-]+@gmail\\.com$")) {
            request.setAttribute("error", "Invalid email! Please enter a valid Gmail address(example@gmail.com).");
            request.getRequestDispatcher("contact.jsp").forward(request, response);
            return;
        }

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            // Insert query
            String sql = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, message);

            int row = ps.executeUpdate();

            if (row > 0) {
                // Redirect to viewStudents.jsp after successful insert
                response.sendRedirect("viewContact.jsp");
            } else {
                response.getWriter().println("Failed to send messages!");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
            try { if(ps != null) ps.close(); } catch(Exception e) {}
            try { if(conn != null) conn.close(); } catch(Exception e) {}
        }
    }
 }


