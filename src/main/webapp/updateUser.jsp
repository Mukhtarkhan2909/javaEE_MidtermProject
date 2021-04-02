<%--Update user page--%>

<%@ page import="java.util.List" %>
<%@ page import="com.example.Mid_Term_Project.services.*" %>
<%@ page import="com.example.Mid_Term_Project.entities.User" %>
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
    UserService s = new UserService();
    List<User> list = s.getUsers();
%>
<div class="mt-2">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">User ID</th>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Role</th>
            <th scope="col">Email</th>
            <th scope="col">Password</th>
            <th scope="col">Date of birth</th>
            <th scope="col">Gender</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <% for (User user : list) { %>
        <form action="updateUserResult.jsp" method="post">
            <tr>
                <td scope="col"><input readonly name="id" value="<%= user.getUserID() %>"></input></td>
                <th scope="col"><input type="text" name="fName" value="<%= user.getFirstName() %>"></input></th>
                <td scope="col"><input type="text" name="lName" value="<%= user.getLastName() %>"></input></td>
                <td scope="col">
                    <select class="form-control" name="role">
                        <%
                            if (user.getRole().equals("student")) {
                        %>
                        <option value="<%=user.getRole()%>" selected>Student</option>
                        <option value="teacher">Teacher</option>
                        <option value="admin">Admin</option>
                        <%
                            } else if (user.getRole().equals("teacher")) {
                        %>
                        <option value="student">Student</option>
                        <option value="<%=user.getRole()%>" selected>Teacher</option>
                        <option value="admin">Admin</option>
                        <% } else { %>
                        <option value="student">Student</option>
                        <option value="teacher">Teacher</option>
                        <option value="<%=user.getRole()%>" selected>Admin</option>
                        <% } %>
                    </select>
                </td>
                <td scope="col"><input type="text" name="email" value="<%= user.getEmail() %>"></input></td>
                <td scope="col"><input type="text" name="password" value="<%= user.getPassword() %>"></input></td>
                <td scope="col"><input type="date" name="dateOfBirth" value="<%= user.getDateOfBirth() %>"></input></td>
                <td scope="col">
                    <select class="form-control" name="gender">
                        <%
                            if (user.getGender().equals("male")) {
                        %>
                        <option value="<%=user.getGender()%>" selected>Male</option>
                        <option value="female">Female</option>
                        <% } else { %>
                        <option value="male">Male</option>
                        <option value="<%=user.getGender()%>" selected>Female</option>
                        <% } %>
                    </select>
                </td>
                <td scope="col"><button type="submit" class="btn btn-success">Update</button></td>
            </tr>
        </form>
        <% }%>
        </tbody>
    </table>
</div>
</body>
</html>
