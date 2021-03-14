<%@page import="java.util.List"%>
<%@page import="com.example.Mid_Term_Project.services.CourseService"%>
<%@page import="com.example.Mid_Term_Project.entities.*"%>
<%@ page import="com.example.Mid_Term_Project.services.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Update Program</title>
</head>
<body>
<%
    HttpSession session = request.getSession(false);
    if(session == null){
        response.sendRedirect("./login.html");
    } else {
        User u1 = (User) session.getAttribute("admin");
        if(u1 == null){
            response.sendRedirect("./loginPage");
        }
    }
%>
<div class="container">
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
<%
    UserService s = new UserService();
    List<User> userLists = s.getUsers();
%>
<div class="mt-2">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Teacher ID</th>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Role</th>
            <th scope="col">Email</th>
            <th scope="col">Password</th>
            <th scope="col">Date Of Birth</th>
            <th scope="col">Gender</th>
        </tr>
        </thead>
        <tbody>
        <% for (User user : userLists) {
            if (user.getRole().equalsIgnoreCase("teacher")) {%>
        <tr>
            <th scope="col"><%= user.getUserID() %></th>
            <td scope="col"><%= user.getFirstName() %></td>
            <td scope="col"><%= user.getLastName() %></td>
            <td scope="col"><%= user.getRole() %></td>
            <th scope="col"><%= user.getEmail() %></th>
            <td scope="col"><%= user.getPassword() %></td>
            <td scope="col"><%= user.getDateOfBirth() %></td>
            <td scope="col"><%= user.getGender() %></td>
        </tr>
        <% }}%>
        </tbody>
    </table>
</div>
</body>
</html>