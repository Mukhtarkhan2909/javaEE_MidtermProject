package com.example.Mid_Term_Project.servlets;

import com.example.Mid_Term_Project.entities.User;
import com.example.Mid_Term_Project.services.CourseService;
import com.example.Mid_Term_Project.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/addUser")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        User u = new User();
        u.setUserID(Integer.parseInt(request.getParameter("user_id")));
        u.setFirstName(request.getParameter("user_first_name"));
        u.setLastName(request.getParameter("user_last_name"));
        u.setRole(request.getParameter("user_role"));
        u.setEmail(request.getParameter("user_email"));
        u.setPassword(request.getParameter("user_password"));
        java.sql.Date sqlDate = null;
        try {
            java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("user_date_of_birth"));
            sqlDate = new java.sql.Date(date.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        u.setDateOfBirth(sqlDate);
        u.setGender(request.getParameter("user_gender"));
        UserService s = new UserService();
        boolean state = s.addUser(u);
        if (state) {
            out.println("<h1>User Added Successfully</h1>");
            request.getRequestDispatcher("list_all_programs.jsp").include(request, response);
        } else {
            out.println("<h1>User already exists</h1>");
            request.getRequestDispatcher("add_program.jsp").include(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
