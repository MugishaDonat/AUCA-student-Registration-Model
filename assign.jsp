<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="DB.db_connect"%>
<%
String teacher = request.getParameter("teacher");
String course = request.getParameter("course");

Connection connection = null;

try {
    connection = db_connect.getConnection();
    
    if (connection != null) {
        String query = "INSERT INTO teacher_course (teacher, course) VALUES (?, ?)";
        
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        
        preparedStatement.setString(1, teacher);
        preparedStatement.setString(2, course);
        
         
        
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