<%@ page import="com.example.Mid_Term_Project.services.UserService" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="com.example.Mid_Term_Project.entities.User">
<jsp:setProperty property="userID" name="user" value='<%=Integer.parseInt(request.getParameter("userID"))%>'/>
<jsp:setProperty property="firstName" name="user" value='<%=request.getParameter("firstName")%>'/>
<jsp:setProperty property="lastName" name="user" value='<%=request.getParameter("lastName")%>'/>
<jsp:setProperty property="role" name="user" value='<%=request.getParameter("role")%>'/>
<jsp:setProperty property="email" name="user" value='<%=request.getParameter("email")%>'/>
<jsp:setProperty property="password" name="user" value='<%=request.getParameter("password")%>'/>
<%
    java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dateOfBirth"));
    java.sql.Date sqlDate = new java.sql.Date(date.getTime());
%>
<jsp:setProperty property="dateOfBirth" name="user" value='<%=sqlDate%>'/>
<jsp:setProperty property="gender" name="user" value='<%=request.getParameter("gender")%>'/>
</jsp:useBean>
<%
    UserService service = new UserService();
    if (service.updateUser(user)) {
        request.setAttribute("user", user);
        request.getRequestDispatcher("successfulUserUpdate.jsp").forward(request, response);
%>
<jsp:forward page="successfulUserUpdate.jsp" />
<%
    }
    else {
        response.sendRedirect("errorPage.jsp");
    }
%>
