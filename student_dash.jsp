<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.db_connect"%>
<%@page import="DB.db_connect"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="style.css">
</head>
<style>
    *{
    margin: 0;
    padding: 0;
}

.main{
    width: 100%;
/*    background: linea    <title>Webpage Design</title>
r-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(images/4.jpg);*/
    background-position: center;
    background-size: cover;
    height: 100vh;
}

.navbar{
    width: 100%;
    height: 75px;
    margin: auto;
    background: #000;
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
    
    
   
    
   
}

ul li{
    list-style: none;
   
    margin-top: 27px;
    font-size: 14px;
    
     margin-left: 3px
}

ul li a{
    text-decoration: none;
    color: #fff;
    font-family: Arial;
    font-weight: bolder;
    transition: 0.4s ease-in-out;
     background: #7B0707;
     padding: 10px;
     border-radius: 6px;
     
          
}

ul li a:hover{
    color: #fff;
    background: #F60E0E;
   
    
}

.search{
    width: 400px;
    float: left;
    margin-left: 270px;
}

.srch{
    font-family: 'Times New Roman';
    width: 200px;
    height: 40px;
    background: #000;
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
        <div class="navbar">
            <div class="icon">
                <h2 class="logo">Student</h2>
            </div>
            

            <div class="menu">
                <ul>
                    <li><a href="#">Department</a></li>
                    <li><a href="#">Course</a></li>
                    <li><a href="#">DESIGN</a></li>
                    
                    <li><a href="#"><i class="bi bi-power "></i>Logout</a></li>
                    
                </ul>
            </div>

            

        </div> 
        
        
     <div class=" mt-5 w-75 ml-5">
         <h1 class="mb-4 text-muted">Courses that belongs to the current semester</h1>
         <h3 class="mb-4 text-muted">(Based on the student's department and current date)</h3>
         
         <table class="table table-bordered ">
  <thead class="thead-dark">
    <tr>
      
      <th scope="col">Course name</th>
      <th scope="col">semester</th>
      
      <th scope="col">start</th>
      <th scope="col">end</th>
      <th scope="col">department</th>
      <th scope="col">Description</th>
      <th scope="col">Operation</th>
    </tr>
  </thead>
  <tbody>

       <%
        try {
//            String qry = "select * from teacher_course join teacher on teacher_course.teacher = teacher.code join coursetb on teacher_course.course=coursetb.code";
LocalDate today = LocalDate.now();

String name  = (String)session.getAttribute("name");
String qry = "SELECT * FROM teacher_course JOIN teacher ON teacher_course.teacher ="
        + " teacher.code JOIN coursetb ON teacher_course.course = coursetb.code LEFT JOIN semester ON coursetb.semester ="
        + " semester.semId LEFT JOIN department ON  coursetb.department = department.depId LEFT JOIN students ON  students.dep ="
        + "department.depId where students.full_name=?";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
            statement.setString(1, name);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
               LocalDate start = rs.getDate("startDate").toLocalDate();
               LocalDate end = rs.getDate("endDate").toLocalDate();
               
               if (today.isAfter(start) && today.isBefore(end)) {
                   
                %>
                <tr>
                <td><%= rs.getString("courseName") %></td>
                <td><%= rs.getString("semester.name") %></td>
                <td><%= rs.getString("startDate") %></td>
                <td><%= rs.getString("endDate") %></td>
                
                <td><%= rs.getString("department.name") %></td>
                <td><%= rs.getString("description") %></td>
                
                <td><a  class="btn btn-block btn-success" href="pick.jsp?id=<%= rs.getInt("coursetb.code") %>">Join</a></td>
                
                </tr>
                <%
                } else {
                    System.out.println("Today's date is not between the start and end dates for the record.");
                }
                
            
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
      
  </tbody>
</table>
    </div>
       
<!--        <div class="ml-4 mt-5">
             <table class="table table-bordered ">
  <thead class="thead-dark">
    <tr>
      
      <th scope="col">Course name</th>
      <th scope="col">semester</th>
      <th scope="col">department</th>
      <th scope="col">Description</th>
      <th scope="col">Operation</th>
    </tr>
  </thead>
  <tbody>

       <%
        try {
//            String qry = "select * from teacher_course join teacher on teacher_course.teacher = teacher.code join coursetb on teacher_course.course=coursetb.code";
String name  = (String)session.getAttribute("name");
  String qry = "select * from coursetb join department on coursetb.department = department.depId inner join students on students.dep= department.depId";
            Connection con = db_connect.getConnection();
            PreparedStatement statement = con.prepareStatement(qry);
//            statement.setString(1, name);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                %>
                <tr>
                <td><%= rs.getString("courseName") %></td>
                <td><%= rs.getString("semester.name") %></td>
                <td><%= rs.getString("department.name") %></td>
                <td><%= rs.getString("description") %></td>
                
                <td><a  class="btn btn-block btn-success" href="pick.jsp?id=<%= rs.getInt("coursetb.code") %>">Join</a></td>
                
           
                
                </tr>
                <%
            }
        } catch (Exception e) {
            out.print(e);
        }
        %>
      
  </tbody>
</table>
                   
       
        </div>-->
        
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>