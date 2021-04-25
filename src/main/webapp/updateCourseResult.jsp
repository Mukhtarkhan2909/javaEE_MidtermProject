<%@ page import="com.example.Mid_Term_Project.services.CourseService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="course" class="com.example.Mid_Term_Project.entities.Course">
<jsp:setProperty property="courseName" name="course" value='<%=request.getParameter("courseName")%>'/>
<jsp:setProperty property="description" name="course" value='<%=request.getParameter("description")%>'/>
<jsp:setProperty property="price" name="course" value='<%=Integer.parseInt(request.getParameter("price"))%>'/>
<jsp:setProperty property="durationInWeeks" name="course" value='<%=Integer.parseInt(request.getParameter("durationInWeeks"))%>'/>
<jsp:setProperty property="degreeCertificateOffered" name="course" value='<%=request.getParameter("degreeCertificateOffered")%>'/>
</jsp:useBean>
<%
    CourseService service = new CourseService();
    if (service.updateCourse(course)) {
        request.setAttribute("course", course);
        request.getRequestDispatcher("successfulCourseUpdate.jsp").forward(request, response);
%>
<jsp:forward page="successfulCourseUpdate.jsp" />
<%
    }
    else {
        response.sendRedirect("errorPage.jsp");
    }
%>
