<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="com.example.Mid_Term_Project.entities.*"%>
<%@ page errorPage="errorPage.jsp" %>
<%@ include file="header.jsp" %>
<%
    User u = (User) session.getAttribute("admin");
    if(u == null){
        response.sendRedirect("./loginPage");
    }
%>
<div class="container">
    <ul class="nav justify-content-center" style="border: 2px solid rgb(75, 204, 243)">
        <li class="nav-item">
            <a class="nav-link" href="course.jsp">Manage courses</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="teacher.jsp">Manage teachers</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="student.jsp">Manage students</a>
        </li>
    </ul>
</div>
<div class="container text-center">
    <h2 class="justify-content-center" style="color:green;">Update was completed successfully</h2>
    <br>
    <jsp:useBean id="user" class="com.example.Mid_Term_Project.entities.User"></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>
    <h5>User ID </h5>
    <p>
        <jsp:getProperty name="user" property="userID"/>
    </p>
    <h5>First name </h5>
    <p>
        <jsp:getProperty name="user" property="firstName"/>
    </p>
    <h5>Last name </h5>
    <p>
        <jsp:getProperty name="user" property="lastName"/>
    </p>
    <h5>User role </h5>
    <p>
        <jsp:getProperty name="user" property="role"/>
    </p>
    <h5>Email </h5>
    <p>
        <jsp:getProperty name="user" property="email"/>
    </p>
    <h5>Password </h5>
    <p>
        <jsp:getProperty name="user" property="password"/>
    </p>
    <h5>Date of birth </h5>
    <p>
        <jsp:getProperty name="user" property="dateOfBirth"/>
    </p>
    <h5>Gender </h5>
    <p>
        <jsp:getProperty name="user" property="gender"/>
    </p>
</div>
</body>
</html>
