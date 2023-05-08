<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>Courses</title>
</head>
<body>
<div class="col-sm-8">
<form action="WelcomeServlet" method="get"></form>
<div class="panel-body">

<table id="tb1-courses" class="table table-responsive table-bordered" cellpadding="0" width="100%"> 
<thead>
<tr>
<th>Teacher Name</th>
<th>Courses</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<tr>
<td>${name}</td>
<td>${course}</td>
<td>Edit</td>
<td>Delete</td>
</tr>

</table>
</div>

</div>
</body>
</html>