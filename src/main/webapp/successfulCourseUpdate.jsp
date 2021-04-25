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
    <jsp:useBean id="course" class="com.example.Mid_Term_Project.entities.Course"></jsp:useBean>
    <jsp:setProperty property="*" name="course"/>
    <h5>Course name </h5>
    <p>
        <jsp:getProperty name="course" property="courseName"/>
    </p>
    <h5>Description </h5>
    <p>
        <jsp:getProperty name="course" property="description"/>
    </p>
    <h5>Price </h5>
    <p>
        <jsp:getProperty name="course" property="price"/>
    </p>
    <h5>Duration in weeks </h5>
    <p>
        <jsp:getProperty name="course" property="durationInWeeks"/>
    </p>
    <h5>Degree certificate offered </h5>
    <p>
        <jsp:getProperty name="course" property="degreeCertificateOffered"/>
    </p>
</div>
</body>
</html>
