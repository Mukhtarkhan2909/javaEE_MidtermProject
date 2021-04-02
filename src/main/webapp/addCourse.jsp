<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.Mid_Term_Project.entities.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Add Program</title>
</head>
<body class="container">
<%
    User u = (User) session.getAttribute("admin");
    if(u == null){
        response.sendRedirect("loginPage");
    }
%>
<div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="./">Online educational course</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="./logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<div class="container form-group mt-2">
    <a href="#" onclick="history.go(-1)"><button class="btn btn-danger">Back</button></a>
</div>
<div class="container card mt-2">
    <div class="containercard-body">
        <center>
            <h1 class="mt-2 mb-2">Course Details</h1>
        </center>
        <form method="POST" action="addCourse">
            <div class="form-group row">
                <label for="course_name" class="col-sm-2 col-form-label">Course name</label>
                <div class="col-sm-10">
                    <input type="text" name="course_name" class="form-control" id="course_name"required>
                </div>
            </div>
            <div class="form-group row">
                <label for="description" class="col-sm-2 col-form-label">Course description</label>
                <div class="col-sm-10">
                    <textarea name="description" id="description" class="form-control" required></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label for="price" class="col-sm-2 col-form-label">Course price</label>
                <div class="col-sm-10">
                    <input id="price" type="number" class="form-control" name="price" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="duration_in_weeks" class="col-sm-2 col-form-label">Duration in weeks</label>
                <div class="col-sm-10">
                    <input id="duration_in_weeks" class="form-control" name="duration_in_weeks" type="number" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="dco" class="col-sm-2 col-form-label">Degree Certificate Offered</label>
                <div class="col-sm-10">
                    <input id="dco" type="text" class="form-control" name="degree_certificate_offered" required>
                </div>
            </div>
            <div class="form-group float-right">
                <button type="submit" class="btn btn-success">Submit</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
