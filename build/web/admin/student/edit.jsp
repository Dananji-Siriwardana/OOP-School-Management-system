<%@page import="Models.Student"%>
<%@page import="ModeloDAO.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>School Management System</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Custom styles -->
    <link href="../css/dashboard.css" rel="stylesheet">

  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">School Management System</a>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="StudentServlet?action=list"> <i class="fa fa-paperclip" aria-hidden="true"></i>Students<span class="sr-only">(current)</span></a></li>
            <li><a href="StaffServlet?action=list"><i class="fa fa-check-circle-o" aria-hidden="true"></i>Staff</a></li>
            <li><a href="CourseServlet?action=list"><i class="fa fa-book" aria-hidden="true"></i>Courses</a></li>
            <li><a href="admin/reports/reportpool.jsp"><i class="fa fa-sitemap" aria-hidden="true"></i>Reports</a></li>
            <li><a href="UserServlet?action=list"><i class="fa fa-sitemap" aria-hidden="true"></i>Users</a></li>
            <li><a href="LogoutServlet"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <h2 class="sub-header">Add Student</h2>
          <div class="user-form" style="width: 50%;">
              <%
              StudentDAO dao=new StudentDAO();
              int id=Integer.parseInt((String)request.getAttribute("studentId"));
              Student sd=(Student)dao.list(id);
              %>
            <form>
              
              <div class="form-group">
                <label for="txtStudentName">Student Name</label>
                <input name="txtStudentName" type="text" class="form-control" id="txtStudentName" placeholder="Enter the Student Name" value="<%= sd.getStudentName()%>" required>
              </div>
                <div class="form-group">
                <label for="txtCourseName">Course Name</label>
                <input name="txtCourseName" type="text" class="form-control" id="txtCourseName" placeholder="Enter the Course Name" value="<%= sd.getCourseName()%>" required>
              </div>
              
                <input type="hidden" name="txtStudentId" value="<%= sd.getStudentId()%>">
                <button type="submit" name="action" value="editrow" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>