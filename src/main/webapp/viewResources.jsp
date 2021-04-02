<%@ page import="java.util.List"%>
<%@ page import="com.example.Mid_Term_Project.entities.*"%>
<%@ page import="com.example.Mid_Term_Project.services.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>
<%
    User u1 = (User) session.getAttribute("teacher");
    User u2 = (User) session.getAttribute("student");
    if(u1 == null && u2 == null){
        response.sendRedirect("./loginPage");
    }
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
