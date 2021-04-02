<%@ page import="java.util.List"%>
<%@ page import="com.example.Mid_Term_Project.services.CourseService"%>
<%@ page import="com.example.Mid_Term_Project.entities.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>
<div class="container form-group mt-2">
    <a href="#" onclick="history.go(-1)"><button class="btn btn-danger">Back</button></a>
</div>
<%
    CourseService s = new CourseService();
    List<Course> coursesLists = s.getCourses();
%>
<div class="mt-2">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Course name</th>
            <th scope="col">Description</th>
            <th scope="col">Course price</th>
            <th scope="col">Duration in weeks</th>
            <th scope="col">Degree certificate offered</th>
        </tr>
        </thead>
        <tbody>
        <% for (Course course : coursesLists) { %>
        <tr>
            <th scope="col"><%= course.getCourseName() %></th>
            <td scope="col"><%= course.getDescription() %></td>
            <td scope="col"><%= course.getPrice() %></td>
            <td scope="col"><%= course.getDurationInWeeks() %></td>
            <td scope="col"><%= course.getDegreeCertificateOffered() %></td>
        </tr>
        <% }%>
        </tbody>
    </table>
</div>
</body>
</html>
