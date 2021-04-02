<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="com.example.Mid_Term_Project.services.CourseService"%>
<%@ page import="com.example.Mid_Term_Project.entities.Course"%>
<%@ page import="java.util.Iterator"%>
<%@ include file="header.jsp" %>

<div class="container form-group mt-2">
    <a href="#" onclick="history.go(-1)"><button class="btn btn-danger">Back</button></a>
</div>
<div class="container row mb-4">
    <%
        CourseService service = new CourseService();
        for (Iterator<Course> iterator = service.getCourses().iterator(); iterator.hasNext();) {
            Course course = iterator.next();
    %>
    <div class="col-sm-6">
        <div class="card mt-4">
            <div class="card-body">
                <h3 class="card-title"><%=course.getCourseName()%></h3>
                <h6 class="card-subtitle mb-2 text-muted"><%=course.getDurationInWeeks()%> week course</h6>
                <hr>
                <p class="card-text"><%=course.getDescription()%></p>
                <hr>
                <h5>Course price <%=course.getPrice()%></h5>
            </div>
        </div>
    </div>
    <%
        }
    %>
</div>
</body>
</html>
