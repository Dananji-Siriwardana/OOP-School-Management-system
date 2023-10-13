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
            <li><a href="StattendanceServlet?action=list"> <i class="fa fa-paperclip" aria-hidden="true"></i>Attendance</a></li>
            <li class="active"><a href="ExamServlet?action=list"><i class="fa fa-sitemap" aria-hidden="true"></i>Exams<span class="sr-only">(current)</span></a></li>
            <li><a href="LogoutServlet"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <h2 class="sub-header">Add Exam</h2>
          <div class="user-form" style="width: 50%;">
            <form action="ExamServlet">
              <div class="form-group">
                <label for="txtExamCode">Exam Code</label>
                <input name="txtExamCode" type="text" class="form-control" id="txtExamCode" placeholder="Enter Exam Code" required>
              </div>
              <div class="form-group">
                <label for="txtExamName">Exam Name</label>
                <input name="txtExamName" type="text" class="form-control" id="txtExamName" placeholder="Enter the Exam" required>
              </div>
              <div class="form-group">
                  <label for="cmbCourse">Course</label>
                  <select name="cmbCourse">
                      <option value="1">ICT</option>
                      <option value="2">Leth</option>
                      <option value="3">Hotel</option>
                  </select>   
              </div>
              <div class="form-group">
                <label for="dateExamDate">Exam Date</label>
                <input name="dateExamDate" type="date" class="form-control" id="dateExamDate">
              </div>
              <div class="form-check">
                <label for="txtHallNo">Hall Number</label>
                <input name="txtHallNo" type="number" class="form-control" id="txtHallNo" placeholder="Enter Hall No">
              </div>
                <br>
                <button type="submit" name="action" value="addrow" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>
