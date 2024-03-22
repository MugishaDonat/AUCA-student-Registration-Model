
<%@page import="java.sql.Date"%>
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
  <div class="navbar">
            <div class="icon">
                <h2 class="logo">ADMIN</h2>
            </div>
          <div class="menu">
               
            </div>

        </div> 
    
    <table class="table table-bordered ">
  <thead class="thead-dark">
    <tr>
      
      <th scope="col">Student name</th>
      <th scope="col">semester</th>
      
      <th scope="col">Course name</th>
<!--      <th scope="col">end</th>
      <th scope="col">department</th>
      <th scope="col">Description</th>
      <th scope="col">Operation</th>-->
    </tr>
  </thead>
  <tbody>   
    
<%
try {
    String semesterParam = request.getParameter("semester");
    String deprt = request.getParameter("dep");
//    out.print(semesterParam);
    
    String trigger = request.getParameter("triger"); // Note the corrected parameter name
    Connection con = db_connect.getConnection();
    // Check if required parameters are not null
   
        int id = Integer.parseInt(semesterParam);
       

        if (trigger.equals("1")) {
            // Case 1: Execute this block when trigger equals "1"
            // Corrected SQL query
            String qry2 = "SELECT * FROM student_course " +
                         "JOIN students ON student_course.student = students.studentId " +
                         "JOIN coursetb ON coursetb.code = student_course.course " +
                         "JOIN semester ON semester.semId = coursetb.semester " +
                         "WHERE student_course.joinedDate BETWEEN semester.startDate AND semester.endDate AND semester.semId = ?";
            
            PreparedStatement statement1 = con.prepareStatement(qry2);
            statement1.setInt(1, id);
            ResultSet rs = statement1.executeQuery();
            
            while (rs.next()) {
%>
                <tr>
                    <td><%= rs.getString("full_name") %></td>
                    <td><%= rs.getString("semester.name") %></td>
                    <td><%= rs.getString("courseName") %></td>
                </tr>
<%
            }
            
            rs.close();
            statement1.close();
        } else if (trigger.equals("2")) {
            // Case 2: Execute this block when trigger equals "2"
            // Corrected SQL query for trigger 2
            int dep = Integer.parseInt(request.getParameter("dep"));
            String qry2 = "SELECT * FROM student_course " +
                         "JOIN students ON student_course.student = students.studentId " +
                         "JOIN coursetb ON coursetb.code = student_course.course " +
                         "JOIN semester ON semester.semId = coursetb.semester " +
                         "JOIN department ON department.depId = coursetb.department " +
                         "WHERE student_course.joinedDate BETWEEN semester.startDate AND semester.endDate " +
                         "AND semester.semId = ? AND department.depId = ?";
            
            PreparedStatement statement1 = con.prepareStatement(qry2);
            statement1.setInt(1, id);
            statement1.setInt(2, dep);
            ResultSet rs = statement1.executeQuery();
            
            while (rs.next()) {
%>
                <tr>
                    <td><%= rs.getString("full_name") %></td>
                    <td><%= rs.getString("semester.name") %></td>
                    <td><%= rs.getString("courseName") %></td>
                </tr>
<%
            }
            
            rs.close();
            statement1.close();


        }else if(trigger.equals("3")){
                           // Case 3: Execute this block when trigger equals "3"
            // Corrected SQL query for trigger 3
            int course = Integer.parseInt(request.getParameter("course"));
            String qry2 = "SELECT * FROM student_course " +
                         "JOIN students ON student_course.student = students.studentId " +
                         "JOIN coursetb ON coursetb.code = student_course.course " +
                         "JOIN semester ON semester.semId = coursetb.semester " +
                         "JOIN department ON department.depId = coursetb.department " +
                         "WHERE student_course.joinedDate BETWEEN semester.startDate AND semester.endDate " +
                         "AND semester.semId = ? AND coursetb.code = ?";
            
            PreparedStatement statement1 = con.prepareStatement(qry2);
            statement1.setInt(1, id);
            statement1.setInt(2, course);
            ResultSet rs = statement1.executeQuery();
            
            while (rs.next()) {
%>
                <tr>
                    <td><%= rs.getString("full_name") %></td>
                    <td><%= rs.getString("semester.name") %></td>
                    <td><%= rs.getString("courseName") %></td>
                </tr>
<%
            }
            
            rs.close();
            statement1.close();
            
        
                }else if(trigger.equals("")){
                
                               // Case 2: Execute this block when trigger equals "2"
                int stud = Integer.parseInt(request.getParameter("student"));

                }else if(trigger.equals("4")){
                

         int depart = Integer.parseInt(request.getParameter("dep"));
         int sem = Integer.parseInt(request.getParameter("semester"));
         
          String qry4 = "SELECT * FROM coursetb " +
                         
                         
                         "JOIN semester ON semester.semId = coursetb.semester " +
                         "JOIN department ON department.depId = coursetb.department " +
                         "WHERE semId = ? AND depId =?";

                          
            PreparedStatement statement1 = con.prepareStatement(qry4);
            statement1.setInt(1, sem);
            statement1.setInt(2, depart);
            ResultSet rs = statement1.executeQuery();
            
 while (rs.next()) {
%>
                <tr>
                    <td></td>
                    <td><%= rs.getString("semester.name") %></td>
                    <td><%= rs.getString("courseName") %></td>
                        
                   
                </tr>
<%
            }
            
            rs.close();
            statement1.close();
                }




else {
            out.print("Invalid trigger value.");
        }
        con.close();
    
} catch (Exception e) {
    out.print(e);
}
%>







    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>




