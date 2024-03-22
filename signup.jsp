<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DB.db_connect"%>
<%
String name = request.getParameter("name");
String pass = request.getParameter("pass");
String type = request.getParameter("type");
String dep = request.getParameter("dep");
String status ="pending";
//out.print(name + " " + pass + " " + type);

Connection connection = null;

try {
    connection = db_connect.getConnection();
    
    if (connection != null) {
        String query = "INSERT INTO " + type + " (full_name, password, dep,status) VALUES (?, ?, ?,?)";
        
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        
        preparedStatement.setString(1, name);
        preparedStatement.setString(2, pass);
        preparedStatement.setString(3, dep);
        preparedStatement.setString(4, status);
        
         if (type.equals("students")) {
            preparedStatement.setString(3, dep); // Insert the qualification for teachers
        } else {
            preparedStatement.setString(3, "N/A"); // Insert "N/A" for students and others
        }
        
        int rowsAffected = preparedStatement.executeUpdate();
        
        if (rowsAffected > 0) {
%>
            <script>
                alert("inserted successfully!");
                window.location.href = "index.html";
            </script>
<%
        } else {
%>
            <script>
                alert("Insertion failed.");
                window.location.href = "registration.jsp";
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
