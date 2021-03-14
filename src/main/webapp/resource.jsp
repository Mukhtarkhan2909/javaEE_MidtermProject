<%@page import="com.example.Mid_Term_Project.entities.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Scheduled Programs</title>
</head>
<body class="container">
<%
    HttpSession session = request.getSession(false);
    if(session == null){
        response.sendRedirect("./loginPage");
    } else {
        User u1 = (User) session.getAttribute("teacher");
        if(u1 == null){
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
<div class="container mt-5">
    <center>
        <ul class="list-group">
            <li class="list-group-item"><a href="addResource.jsp">Add Resource</a></li>
            <br>
            <li class="list-group-item"><a href="viewResources.jsp">List All Resources</a></li>
        </ul>
    </center>
</div>
</body>
</html>
