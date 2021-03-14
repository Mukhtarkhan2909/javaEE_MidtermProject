<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@page import="com.example.Mid_Term_Project.services.CourseService"%>
<%@page import="com.example.Mid_Term_Project.entities.Course"%>
<%@page import="javax.swing.text.StyledEditorKit.ForegroundAction"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Courses</title>
</head>
<body class="container">
<div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="./">Online educational course</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="allCourses.jsp">Courses</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registration.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<div class="container form-group mt-2">
    <a href="#" onclick="history.go(-1)"><button class="btn btn-danger">Back</button></a>
</div>
<div class="row mb-4">
    <%
        CourseService service = new CourseService();
        for (Iterator<Course> iterator = service.getCourses().iterator(); iterator.hasNext();) {
            Course course = iterator.next();
    %>
    <div class="col-sm-6">
        <div class="card mt-4">
            <div class="card-body">
                <h3 class="card-title"><%=course.getCourseName()%></h3>
                <h6 class="card-subtitle mb-2 text-muted"><%=course.getDurationInWeeks()%> week course</h6>
                <hr>
                <p class="card-text"><%=course.getDescription()%></p>
                <hr>
                <h5>Course price <%=course.getPrice()%></h5>
            </div>
        </div>
    </div>
    <%
        }
    %>
</div>
</body>
</html>
