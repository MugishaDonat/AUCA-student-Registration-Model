<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DB.db_connect"%>
<%
    
String name = request.getParameter("name");
String pass = request.getParameter("pass");
String type = request.getParameter("type");

 out.print(name + " " + pass + " " + type);

        // Establish a database connection and create a PreparedStatement
        try{
            
              Connection   connection =db_connect.getConnection();
              
        String query = "SELECT * FROM " + type + " WHERE full_name = ? AND password = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, name);
        preparedStatement.setString(2, pass);

       
        ResultSet rs = preparedStatement.executeQuery();
        if(rs.next()){
            if(type.equals("admin")){
//              admin  
            session.setAttribute("name", name);
%>
            <script>
                alert("Loged in.");
                window.location.href = "admin_dash.jsp";
            </script>
<%

             
            }else if(type.equals("students")){
//                student
            session.setAttribute("name", name);
                %>
            <script>
                alert("Logen in.");
                window.location.href = "student_dash.jsp";
            </script>
<%
            }else{
                session.setAttribute("name", name);
                 %>
            <script>
                alert("Loged in.");
                window.location.href = "teacher_dash.jsp";
            </script>
<%
            }
        }else{
            %>
            <script>
                alert("Login failed.");
                window.location.href = "index.html";
            </script>
<%
        }
        }catch(Exception e){
            out.print("error"+e);
        }
      


%>
