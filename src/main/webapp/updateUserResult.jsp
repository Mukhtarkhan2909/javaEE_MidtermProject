<%@ page import="com.example.Mid_Term_Project.services.UserService" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="com.example.Mid_Term_Project.entities.User"></jsp:useBean>
<jsp:setProperty property="userID" name="user" value='<%=Integer.parseInt(request.getParameter("id"))%>'/>
<jsp:setProperty property="firstName" name="user" value='<%=request.getParameter("fName")%>'/>
<jsp:setProperty property="lastName" name="user" value='<%=request.getParameter("lName")%>'/>
<jsp:setProperty property="role" name="user" value='<%=request.getParameter("role")%>'/>
<jsp:setProperty property="email" name="user" value='<%=request.getParameter("email")%>'/>
<jsp:setProperty property="password" name="user" value='<%=request.getParameter("password")%>'/>
<%
    java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dateOfBirth"));
    java.sql.Date sqlDate = new java.sql.Date(date.getTime());
%>
<jsp:setProperty property="dateOfBirth" name="user" value='<%=sqlDate%>'/>
<jsp:setProperty property="gender" name="user" value='<%=request.getParameter("gender")%>'/>
<%
    UserService service = new UserService();
    if (service.updateUser(user)) {
        request.getRequestDispatcher("successfulPage.jsp").forward(request, response);
%>
<jsp:forward page="successfulPage.jsp" />
<%
    }
    else {
        response.sendRedirect("errorPage.jsp");
    }
%>
