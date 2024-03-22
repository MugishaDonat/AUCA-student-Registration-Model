<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.db_connect"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Webpage Design</title>
    <link rel="stylesheet" href="style.css">
</head>
<style>
    *{
    margin: 0;
    padding: 0;
}

/*.main{
    width: 200px;
    background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(images/4.jpg);
    background: #ddd;
    background-position: center;
    background-size: cover;
    height: 100vh;
}*/

.navbar{
    width: 1200px;
    height: 75px;
    margin: auto;
}

.icon{
    width: 200px;
    float: left;
    height: 70px;
}

.logo{
    color: #ff7200;
    font-size: 35px;
    font-family: Arial;
    padding-left: 20px;
    float: left;
    padding-top: 10px;
    margin-top: 5px
}

.menu{
    width: 400px;
    float: left;
    height: 70px;
}

ul{
    float: left;
    display: flex;
    justify-content: center;
    align-items: center;
}

ul li{
    list-style: none;
    margin-left: 62px;
    margin-top: 27px;
    font-size: 14px;
}

ul li a{
    text-decoration: none;
    color: #fff;
    font-family: Arial;
    font-weight: bold;
    transition: 0.4s ease-in-out;
}

ul li a:hover{
    color: #ff7200;
}

.search{
    width: 330px;
    float: left;
    margin-left: 270px;
}

.srch{
    font-family: 'Times New Roman';
    width: 200px;
    height: 40px;
    background: transparent;
    border: 1px solid #ff7200;
    margin-top: 13px;
    color: #fff;
    border-right: none;
    font-size: 16px;
    float: left;
    padding: 10px;
    border-bottom-left-radius: 5px;
    border-top-left-radius: 5px;
}

.btn{
    width: 100px;
    height: 40px;
    background: #ff7200;
    border: 2px solid #ff7200;
    margin-top: 13px;
    color: #fff;
    font-size: 15px;
    border-bottom-right-radius: 5px;
    border-bottom-right-radius: 5px;
    transition: 0.2s ease;
    cursor: pointer;
}
.btn:hover{
    color: #000;
}

.btn:focus{
    outline: none;
}

.srch:focus{
    outline: none;
}

.content{
    width: 1200px;
    height: auto;
    margin: auto;
    color: #fff;
    position: relative;
}

.content .par{
    padding-left: 20px;
    padding-bottom: 25px;
    font-family: Arial;
    letter-spacing: 1.2px;
    line-height: 30px;
}

.content h1{
    font-family: 'Times New Roman';
    font-size: 50px;
    padding-left: 20px;
    margin-top: 9%;
    letter-spacing: 2px;
}

.content .cn{
    width: 160px;
    height: 40px;
    background: #ff7200;
    border: none;
    margin-bottom: 10px;
    margin-left: 20px;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
    transition: .4s ease;
    
}

.content .cn a{
    text-decoration: none;
    color: #000;
    transition: .3s ease;
}

.cn:hover{
    background-color: #fff;
}

.content span{
    color: #ff7200;
    font-size: 65px
}

.form{
    width: 250px;
    height: 380px;
    background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
    position: absolute;
    top: -20px;
    left: 870px;
    transform: translate(0%,-5%);
    border-radius: 10px;
    padding: 25px;
}

.form h2{
    width: 220px;
    font-family: sans-serif;
    text-align: center;
    color: #ff7200;
    font-size: 22px;
    background-color: #fff;
    border-radius: 10px;
    margin: 2px;
    padding: 8px;
}

.form input{
    width: 240px;
    height: 35px;
    background: transparent;
    border-bottom: 1px solid #ff7200;
    border-top: none;
    border-right: none;
    border-left: none;
    color: #fff;
    font-size: 15px;
    letter-spacing: 1px;
    margin-top: 30px;
    font-family: sans-serif;
}

.form input:focus{
    outline: none;
}

::placeholder{
    color: #fff;
    font-family: Arial;
}

.btnn{
    width: 240px;
    height: 40px;
    background: #ff7200;
    border: none;
    margin-top: 30px;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
    color: #fff;
    transition: 0.4s ease;
}
.btnn:hover{
    background: #fff;
    color: #ff7200;
}
.btnn a{
    text-decoration: none;
    color: #000;
    font-weight: bold;
}
.form .link{
    font-family: Arial, Helvetica, sans-serif;
    font-size: 17px;
    padding-top: 20px;
    text-align: center;
}
.form .link a{
    text-decoration: none;
    color: #ff7200;
}
.liw{
    padding-top: 15px;
    padding-bottom: 10px;
    text-align: center;
}
.icons a{
    text-decoration: none;
    color: #fff;
}
.icons ion-icon{
    color: #fff;
    font-size: 30px;
    padding-left: 14px;
    padding-top: 5px;
    transition: 0.3s ease;
}
.icons ion-icon:hover{
    color: #ff7200;
}   

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" 
      crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<body>

    <div class="main">
       <nav class="navbar navbar-expand-lg navbar-light bg-light rounded shadow-lg">
  <a class="navbar-brand fw-boldery" href="#">ADMIN</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">  <li class="nav-item">
        



 
</div></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><!-- Button trigger modal -->
<button type="button" class="btn btn-block btn-info mb-4" data-toggle="modal" data-target="#course">
  Add Course
</button>

<!-- Modal -->
<div class="modal fade mt-5" id="course" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Add course</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="addCourse.jsp" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Course Name</label>
    <input type="text" name="cname"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  
 <div class="form-group">
    <label for="exampleFormControlTextarea1">Description</label>
    <textarea class="form-control" name="desc" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
            
                <div class="mb-3">
    <label for="semester" class="form-label">Select Departmen</label>
    <select  name="dep" class="form-control" id="semester" required>
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
    
        <div class="mb-3">
    <label for="semester" class="form-label">Select Semester</label>
    <select name="sem" class="form-control" id="semester" required>
        <%
        try {
            String qry = "select * from semester";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("semId") %>"><%= rs.getString("name") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
</div>
  <button type="submit" class="btn btn-success">Submit</button>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div></a>
      </li>
      
      
     
      <li class="nav-item">
        <a class="nav-link "><!-- Button trigger modal -->
<button type="button" class="btn btn-block btn-info mb-4" data-toggle="modal" data-target="#teacher">
  Assign Teacher
</button>

<!-- Modal -->
<div class="modal fade mt-5" id="teacher" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Assign Teacher</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="assign.jsp">
  <div class="form-group">
    <label for="exampleInputEmail1">Select Teacher</label>
      <div class="mb-3">
    
    <select name="teacher" class="form-control" id="semester" required>
        <%
        try {
            String qry = "select * from teacher where status = 'admitted'";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("code") %>"><%= rs.getString("full_name") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
</div>
    
  </div>
   <div class="mb-3">
    <label for="semester" class="form-label">Select Course</label>
    <select name="course" class="form-control" id="semester" required>
        <%
        try {
            String qry = "select * from coursetb";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("code") %>"><%= rs.getString("courseName") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
</div>
 
  <button type="submit" class="btn btn-success">Submit</button>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div></a>
      </li>
    </ul>
   <li class="nav-item">
        <a class="nav-link" href="#"><!-- Button trigger modal -->
<button type="button" class="btn btn-block btn-info mb-4" data-toggle="modal" data-target="#dep">
  Add Department
</button>

<!-- Modal -->
<div class="modal fade mt-5" id="dep" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Add Department</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <form action="new">
  <div class="form-group">
    <label for="exampleInputEmail1">Full Name</label> 
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
 
  <button type="submit" class="btn btn-success">Submit</button>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-info">Understood</button>
      </div>
    </div>
  </div>
</div></a>
      </li>
  </div>
</nav>
   
    </div>
    <!--searching the student and course-->
    <div class="container mt-5">
        <div class="row ">
  
            <!--//-->
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h6 class="card-title">Searching student based on semester</h6>
        <form action="search1.jsp" method="get">
            <input type="hidden" name="triger" value="1">
             <select name="semester" class="form-control" id="semester" required>
                
        <%
        try {
            String qry = "select * from semester";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("semId") %>"><%= rs.getString("name") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
        <input type="submit" class="btn btn-success btn-block">
        </form>
       
      </div>
    </div>
  </div>

        <!--/list of student per department and semester/-->
        
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h6 class="card-title">Searching student based on semester and dep</h6>
        <form action="search1.jsp" method="post">
            <input type="hidden" name="triger" value="2">
        <select name="semester" class="form-control mb-2" id="semester" required>
        <%
        try {
            String qry = "select * from semester";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("semId") %>"><%= rs.getString("name") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
    <select name="dep" class="form-control" id="semester" required>
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
        <input type="submit" class="btn btn-success btn-block">
        </form>
        
      </div>
    </div>
  </div>
            <!--/student by course and semester/-->
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h6 class="card-title">Searching student based on course and semester</h6>
        <form action="search2.jsp" method="post">
                 <input type="hidden" name="triger" value="3">
        <select name="semester" class="form-control mb-2" id="semester" required>
        <%
        try {
            String qry = "select * from semester";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("semId") %>"><%= rs.getString("name") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
    <select name="course" class="form-control" id="semester" required>
        <%
        try {
            String qry = "select * from coursetb";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("code") %>"><%= rs.getString("courseName") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
        <input type="submit" class="btn btn-success btn-block">
        </form>
   
      </div>
    </div>
  </div>
</div>
          <div class="row mt-4 ">
  
            <!--/course per dep and semester/-->
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h6 class="card-title">Searching course based on dep and semester</h6>
        <form action="search1.jsp" method="post">
            <input type="hidden" name="triger" value="4">
         <select name="dep" class="form-control mb-2" id="semester" required>
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
     <select name="semester" class="form-control " id="semester" required>
        <%
        try {
            String qry = "select * from semester";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("semId") %>"><%= rs.getString("name") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
        <input type="submit" class="btn btn-success btn-block">
        </form>
        
      </div>
    </div>
  </div>

      
            <!--/courses per student/-->
  <div class="col-sm-3">
    <div class="card ">
      <div class="card-body  p-5 ">
        <h6 class="card-title">Searching courses based on student</h6>
        <form action="search1.jsp" method="post">
             <input type="hidden" name="triger" value="5">
        <select name="student" class="form-control " id="semester" required>
        <%
        try {
            String qry = "select * from students";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <option value="<%= rs.getString("studentID") %>"><%= rs.getString("full_name") %></option>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </select>
        <input type="submit" class="btn btn-success btn-block">
        </form>
       
      </div>
    </div>
  </div>
</div>
        

            
        </div>
    </div>
    
    
    
    
    
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" 
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" 
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
crossorigin="anonymous"></script>
</body>
</html>