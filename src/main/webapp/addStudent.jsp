<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.example.Mid_Term_Project.entities.*"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Add Program</title>
</head>
<body class="container">
<%
    HttpSession session = request.getSession(false);
    if(session == null){
        response.sendRedirect("./loginPage");
    } else {
        User u = (User) session.getAttribute("admin");
        if(u == null){
            response.sendRedirect("./loginPage");
        }
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
            <h1 class="mt-2 mb-2">Student Details</h1>
        </center>
        <form method="POST" action="addUser">
            <div class="form-group row">
                <label for="user_id" class="col-sm-2 col-form-label">Student ID</label>
                <div class="col-sm-10">
                    <input type="text" name="user_id" class="form-control" id="user_id" placeholder="" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="user_first_name" class="col-sm-2 col-form-label">First Name</label>
                <div class="col-sm-10">
                    <input type="text" name="user_first_name" class="form-control" id="user_first_name" placeholder="" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="user_last_name" class="col-sm-2 col-form-label">Last Name</label>
                <div class="col-sm-10">
                    <input type="text" name="user_last_name" class="form-control" id="user_last_name" placeholder="" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="user_role" class="col-sm-2 col-form-label">Role</label>
                <div class="col-sm-10">
                    <select class="form-control" name="user_role" id="user_role" required>
                        <option value="student" selected>Student</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label for="user_email" class="col-sm-2 col-form-label">Email address</label>
                <div class="col-sm-10">
                    <input type="text" name="user_email" class="form-control" id="user_email" placeholder="" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="user_password" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input id="user_password" type="password" class="form-control" name="user_password" required placeholder="">
                </div>
            </div>
            <div class="form-group row">
                <label for="user_date_of_birth" class="col-sm-2 col-form-label">Date of Birth</label>
                <div class="col-sm-10">
                    <input id="user_date_of_birth" type="date" class="form-control" name="user_date_of_birth" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="user_gender" class="col-sm-2 col-form-label">Gender</label>
                <div class="col-sm-10">
                    <select class="form-control" name="user_gender" id="user_gender" required>
                        <option value="null" disabled selected>--Select gender--</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>
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
