<%@page import="java.util.List"%>
<%@page import="com.example.Mid_Term_Project.entities.*"%>
<%@ page import="com.example.Mid_Term_Project.services.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>
<%
    User u1 = (User) session.getAttribute("teacher");
    User u2 = (User) session.getAttribute("admin");
    if(u1 == null && u2 == null){
        response.sendRedirect("./loginPage");
    }
%>
<div class="container form-group mt-2">
    <a href="#" onclick="history.go(-1)"><button class="btn btn-danger">Back</button></a>
</div>
<%
    UserService s = new UserService();
    List<User> userLists = s.getStudents();
%>
<div class="mt-2">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Student ID</th>
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
        <%
            for (User user : userLists) {
        %>
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
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
