<%@ page import="com.example.Mid_Term_Project.entities.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>
<%
    User u1 = (User) session.getAttribute("admin");
    if(u1 == null){
        response.sendRedirect("./loginPage");
    }
%>
<div class="container form-group mt-2">
    <a href="#" onclick="history.go(-1)"><button class="btn btn-danger">Back</button></a>
</div>
<div class="container mt-5">
    <center>
        <ul class="list-group">
            <li class="list-group-item"><a href="addTeacher.jsp">Add Teacher</a></li>
            <br>
            <li class="list-group-item"><a href="updateUser.jsp">Update Teacher</a></li>
            <br>
            <li class="list-group-item"><a href="viewTeachers.jsp">List All Teacher</a></li>
        </ul>
    </center>
</div>
</body>
</html>
