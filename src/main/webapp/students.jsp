<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@page import="com.example.Mid_Term_Project.entities.*"%>
<%@ include file="header.jsp" %>
<%
    User u1 = (User) session.getAttribute("student");
    if(u1 == null){
        response.sendRedirect("./loginPage");
    }
%>
<div class="container">
    <ul class="nav justify-content-center" style="border: 2px solid rgb(75, 204, 243)">
        <li class="nav-item">
            <a class="nav-link" href="viewCourses.jsp">View courses</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="viewResources.jsp">View resources</a>
        </li>
    </ul>
</div>
</body>
</html>
