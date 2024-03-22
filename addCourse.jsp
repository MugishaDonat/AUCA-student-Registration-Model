<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DB.db_connect"%>
<%
String name = request.getParameter("cname");
String desc = request.getParameter("desc");
String sem = request.getParameter("sem");
String dep = request.getParameter("dep");


Connection connection = null;

try {
    connection = db_connect.getConnection();
    
    if (connection != null) {
        String query = "INSERT INTO coursetb (courseName, description, semester,department) VALUES (?, ?, ?,?)";
        
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        
        preparedStatement.setString(1, name);
        preparedStatement.setString(2, desc);
        preparedStatement.setString(3, sem);
        preparedStatement.setString(4, dep);
        
     
        int rowsAffected = preparedStatement.executeUpdate();
        
        if (rowsAffected > 0) {
%>
            <script>
                alert("inserted successfully!");
                window.location.href = "admin_dash.jsp";
            </script>
<%
        } else {
%>
            <script>
                alert("Insertion failed.");
                window.location.href = "admin_dash.jsp";
            </script>
<%
        }
        
        preparedStatement.close();
    } else {
        out.print("Database connection is null.");
    }
} catch (SQLException e) {
    out.print("SQL error: " + e.getMessage());
} catch (Exception e) {
    out.print("Exception: " + e.getMessage());
}
%>
