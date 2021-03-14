<%@page import="java.util.List"%>
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
        User u1 = (User) session.getAttribute("teacher");
        User u2 = (User) session.getAttribute("student");
        if(u1 == null && u2 == null){
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
<%
    ResourceService s = new ResourceService();
    List<Resource> resourceLists = s.getResources();
%>
<div class="container form-group mt-2">
    <a href="#" onclick="history.go(-1)"><button class="btn btn-danger">Back</button></a>
</div>
<div class="mt-2">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Resource ID</th>
            <th scope="col">Type</th>
            <th scope="col">Owner</th>
            <th scope="col">Title</th>
            <th scope="col">Content</th>
            <th scope="col">Course name</th>
            <th scope="col">Uploaded date</th>
        </tr>
        </thead>
        <tbody>
        <% for (Resource resource : resourceLists) { %>
        <tr>
            <th scope="col"><%= resource.getResourceID() %></th>
            <td scope="col"><%= resource.getResourceType() %></td>
            <td scope="col"><%= resource.getResourceOwner() %></td>
            <td scope="col"><%= resource.getTitle() %></td>
            <th scope="col"><%= resource.getContent() %></th>
            <td scope="col"><%= resource.getCourseName() %></td>
            <td scope="col"><%= resource.getDate() %></td>
        </tr>
        <% }%>
        </tbody>
    </table>
</div>
</body>
</html>