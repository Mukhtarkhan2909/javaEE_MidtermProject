<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@page import="com.example.Mid_Term_Project.entities.*"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Admin</title>
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
<div>
    <ul class="nav justify-content-center" style="border: 2px solid rgb(75, 204, 243)">
        <li class="nav-item">
            <a class="nav-link" href="resource.jsp">Manage resources</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="viewCourses.jsp">View courses</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="viewStudents.jsp">View students</a>
        </li>
    </ul>
</div>
</body>
</html>
