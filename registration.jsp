<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.db_connect"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
    background-image: url("images/4.jpg");
    background-size: cover;
}



    </style>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" 
      crossorigin="anonymous">
<body>
    <div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-4 mt-5">
            <div class="card">
                <div class="card-header text-center fs-3 fw-bolder">
                    Login
                </div>
                <div class="card-body">
                    <form action="signup.jsp" method="post"> 
                        <div class="mb-3">
                           <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="type" id="inlineRadio1" value="students" required="">
                               <label class="form-check-label fw-bolder" for="inlineRadio1">Student</label>
                             </div>
                             <div class="form-check form-check-inline">
                               <input class="form-check-input" type="radio" name="type" id="inlineRadio2" value="teacher">
                               <label class="form-check-label fw-bolder" for="inlineRadio2">Teacher</label>
                             </div>
                         
                        </div>
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" name="name" class="form-control" id="username" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" name="pass" class="form-control" id="password" required>
                        </div> 
                        
                      <div class="mb-3">
    <label for="semester" class="form-label">Select Semester</label>
    <select name="dep" class="form-select" id="semester" required>
        <%
        try {
            String qry = "select * from department";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("depId") %>"><%= rs.getString("name") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
</div>

                           
                        
                        <div class="d-grid gap-2">
                            <button type="submit" class=" btn btn-block btn-success ">Signup</button>
  
                    </div>
                    </form>
                    <a href="index.html" class="text-muted fw-bolder fs-4">Login Here</a>
                </div>
            </div>
        </div>
    </div>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
