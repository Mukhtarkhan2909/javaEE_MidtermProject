<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .form-container {
            border: 2px solid rgb(204, 198, 198);
            height: 400px;
            border-radius: 5px;
            align-content: center;
        }
    </style>
    <title>Login</title>
</head>
</head>
<body class="container">
<div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="./">Online educational course</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="allCourses.jsp">Courses</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registration.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<div class="form-group mt-2">
    <a href="#" onclick="history.go(-1)"><button class="btn btn-danger">Back</button></a>
</div>
<div class="d-flex justify-content-center">
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
