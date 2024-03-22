<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.db_connect"%>
<%@page import="java.sql.Connection"%>
<%
 String name = (String) session.getAttribute("name") ;
int id = Integer.parseInt(request.getParameter("id"));
LocalDate date = LocalDate.now();
java.sql.Date sqlDate = java.sql.Date.valueOf(date);

try {
            String qry = "select * from students where full_name = ?";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
             statement.setString(1, name);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                int stu =Integer.parseInt(rs.getString("studentID"));
                
                 String query = "INSERT INTO `student_course` (student, course,joinedDate) VALUES (?, ?, ?)";
                    PreparedStatement preparedStatement = con.prepareStatement(query);
                    preparedStatement.setInt(1, stu);
                    preparedStatement.setInt(2, id);
                    preparedStatement.setDate(3,sqlDate);
       
                   int rowsAffected = preparedStatement.executeUpdate();
        
        if (rowsAffected > 0) {
%>
            <script>
                alert("Picked the course successfuly!");
                window.location.href = "student_dash.jsp";
            </script>
<%
        } else {
%>
            <script>
                alert("pickin up failed.");
                window.location.href = "student_dash.jsp";
            </script>
<%
        }
        
              
            }
        } catch (Exception e) {
            out.print(e);
        }







%>