<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>Courses</title>
<style>
   	label{
        margin-right: 20px;
        margin-bottom:20px;
    }
   </style>
</head>
<body>
<div>
<h1 align="center">List of Courses</h1>
</br>
<div class="row">
<div class="col-sm-4">
<form action=WelcomeServlet method=post>
<div align="left">
<label class="form-label">
Teacher Name
</label>
<input type="text" class="form-control" placeholder="Teacher Name" name="tname" id="tname" required>
</div>


<div align="left">
</br>
<label class="form-label">
Courses
</label>
<input type="text" class="form-control" placeholder="Courses" name="course" id="course" required>
</div>


<div align="left">
</br>
<input type="submit" id="submit" value="submit" name="Submit" class="btn btn-info">

<input type="reset" id="reset" value="reset" name="Reset" class="btn btn-warning">
</div>
</form>
</div>

</div>
</div>

</body>
</html>