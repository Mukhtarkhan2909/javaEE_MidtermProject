<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<div class="container form-group mt-2">
    <a href="#" onclick="history.go(-1)"><button class="btn btn-danger">Back</button></a>
</div>
<div class="container d-flex justify-content-center">
<div class="col-lg-6 form-container mt-4">
    <div class="card-body">
        <div class="form-group">
            <form action="./login" method="post">
                <center>
                    <h1>Login</h1>
                </center>
                <label for="email">Email address</label>
                <input type="email" name="user_email" id="email" class="form-control" required>
                <br>
                <label for="password">Password</label>
                <input type="password" name="user_password" id="password" class="form-control" required>
                <br>
                <select class="form-control" name="user_role" required>
                    <option disabled selected>Choose your role</option>
                    <option value="student">Student</option>
                    <option value="teacher">Teacher</option>
                    <option value="admin">Admin</option>
                </select>
                <br>
                <button type="submit" class="btn btn-primary pull-right">Submit</button>
            </form>
        </div>
    </div>
</div>
</div>
</body>
</html>
