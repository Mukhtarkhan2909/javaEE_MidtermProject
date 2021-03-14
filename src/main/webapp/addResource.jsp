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
        User u = (User) session.getAttribute("teacher");
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
            <h1 class="mt-2 mb-2">Resource Details</h1>
        </center>
        <form method="POST" action="addResource">
            <div class="form-group row">
                <label for="resource_id" class="col-sm-2 col-form-label">Resource ID</label>
                <div class="col-sm-10">
                    <input type="number" name="resource_id" class="form-control" id="resource_id"required>
                </div>
            </div>
            <div class="form-group row">
                <label for="resource_type" class="col-sm-2 col-form-label">Type</label>
                <div class="col-sm-10">
                    <input type="text" name="resource_type" class="form-control" id="resource_type"required>
                </div>
            </div>
            <div class="form-group row">
                <label for="resource_owner" class="col-sm-2 col-form-label">Owner</label>
                <div class="col-sm-10">
                    <input type="text" name="resource_owner" class="form-control" id="resource_owner"required>
                </div>
            </div>
            <div class="form-group row">
                <label for="resource_title" class="col-sm-2 col-form-label">Title</label>
                <div class="col-sm-10">
                    <input type="text" name="resource_title" class="form-control" id="resource_title"required>
                </div>
            </div>
            <div class="form-group row">
                <label for="resource_content" class="col-sm-2 col-form-label">Content</label>
                <div class="col-sm-10">
                    <textarea name="resource_content" id="resource_content" class="form-control" required></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label for="resource_course" class="col-sm-2 col-form-label">Course name</label>
                <div class="col-sm-10">
                    <input id="resource_course" class="form-control" name="resource_course" type="text" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="resource_date" class="col-sm-2 col-form-label">Published date</label>
                <div class="col-sm-10">
                    <input id="resource_date" type="date" class="form-control" name="resource_date" required>
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
