<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Messages | Explore Mandalay</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">    
<style>
:root {
    --mandalay-gold: #deae49;
    --mandalay-accent: #c3f24b;
    --deep-charcoal: #1a1a1a;
    --soft-white: #fcfcfc;
}

body {
    font-family: 'Pyidaungsu', sans-serif;
    background-color: var(--soft-white);
    margin: 0;
}

/* Page Header */
.dashboard-header {
    background: linear-gradient(135deg, var(--mandalay-gold), var(--mandalay-accent));
    padding: 40px 20px;
    text-align: center;
    color: #333;
}

/* Table Container */
.container {
    max-width: 1200px;
    margin: -40px auto 50px;
    background: white;
    border-radius: 20px;
    box-shadow: 0 15px 35px rgba(0,0,0,0.1);
    overflow: hidden;
    padding: 20px;
}

h2 {
    color: var(--deep-charcoal);
    padding: 20px;
    border-bottom: 2px solid var(--mandalay-accent);
    display: flex;
    align-items: center;
    gap: 10px;
}
.back-btn {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    text-decoration: none;
    color: var(--deep-charcoal);
    font-weight: 600;
    padding: 12px 25px;
    border: 2px solid var(--mandalay-gold);
    border-radius: 50px;
    transition: all 0.3s ease;
    margin: 20px 0;
    font-size: 15px;
}

.back-btn i {
    transition: transform 0.3s ease;
}

.back-btn:hover {
    background: var(--mandalay-gold);
    color: white;
    box-shadow: 0 5px 15px rgba(222, 174, 73, 0.4);
}

.back-btn:hover i {
    transform: translateX(-5px); /* Moves the arrow left on hover */
}

/* Modern Table Styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}

th {
    background-color: var(--deep-charcoal);
    color: var(--mandalay-gold);
    text-align: left;
    padding: 15px;
    font-weight: 600;
}

td {
    padding: 15px;
    border-bottom: 1px solid #eee;
    color: #444;
    vertical-align: top;
}

tr:hover {
    background-color: #f9f9f9;
}

.user-info {
    font-weight: bold;
    color: var(--deep-charcoal);
}

.timestamp {
    font-size: 12px;
    color: #888;
}

.msg-text {
    line-height: 1.6;
    color: #555;
    font-style: italic;
}

/* Back Link */
.back-btn {
    display: inline-block;
    margin: 20px;
    text-decoration: none;
    color: var(--mandalay-gold-dark);
    font-weight: bold;
}
</style>
</head>
<body>

<section class="dashboard-header">
    <h1>Feedback Dashboard</h1>
    <p>Admin View: User messages and suggestions</p>
</section>

<div class="container">
    <h2><i class="fa-solid fa-inbox"></i> Incoming Messages</h2>
    
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Sender Details</th>
                <th>Message Content</th>
                <th>Received Date</th>
            </tr>
        </thead>
        <tbody>
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mandalayproject", "root", "root10&Htet");
                    Statement st = conn.createStatement();
                    ResultSet rs = st.executeQuery("SELECT * FROM contact_messages ORDER BY created_at ASC");

                    while(rs.next()) {
            %>
            <tr>
                <td>#<%= rs.getInt("id") %></td>
                <td>
                    <div class="user-info"><%= rs.getString("name") %></div>
                    <div style="font-size: 13px; color: var(--mandalay-gold-dark);"><%= rs.getString("email") %></div>
                </td>
                <td class="msg-text">"<%= rs.getString("message") %>"</td>
                <td class="timestamp"><%= rs.getTimestamp("created_at") %></td>
            </tr>
            <%
                    }
                    conn.close();
                } catch (Exception e) {
                    out.println("<tr><td colspan='4'>Error loading data: " + e.getMessage() + "</td></tr>");
                }
            %>
        </tbody>
    </table>
    
    <a href="contact.jsp" class="back-btn">
    	<i class="fa-solid fa-arrow-left"></i> Back to Contact Page
	</a>
</div>

</body>
</html>