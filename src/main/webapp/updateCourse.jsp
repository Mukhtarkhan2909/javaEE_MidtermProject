<%--Update course page--%>

<%@ page import="java.util.List" %>
<%@ page import="com.example.Mid_Term_Project.services.*" %>
<%@ page import="com.example.Mid_Term_Project.entities.User" %>
<%@ page import="com.example.Mid_Term_Project.entities.Course" %>
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
<%
    CourseService s = new CourseService();
    List<Course> list = s.getCourses();
%>
<div class="mt-2">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Course Name</th>
            <th scope="col">Description</th>
            <th scope="col">Price</th>
            <th scope="col">Duration in weeks</th>
            <th scope="col">Degree certificate offered</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <% for (Course course : list) { %>
        <form action="updateCourseResult.jsp" method="post">
            <tr>
                <td scope="col"><input readonly name="name" value="<%= course.getCourseName() %>"></input></td>
                <th scope="col"><input type="text" name="description" value="<%= course.getDescription() %>"></input></th>
                <td scope="col"><input type="number" name="price" value="<%= course.getPrice() %>"></input></td>
                <td scope="col"><input type="number" name="durInWeek" value="<%= course.getDurationInWeeks() %>"></input></td>
                <td scope="col"><input type="text" name="degCert" value="<%= course.getDegreeCertificateOffered() %>"></input></td>
                <td scope="col"><button type="submit" class="btn btn-success">Update</button></td>
            </tr>
        </form>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
