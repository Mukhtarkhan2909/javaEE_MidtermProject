package com.example.Mid_Term_Project.servlets;

import com.example.Mid_Term_Project.entities.User;
import com.example.Mid_Term_Project.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User u = new UserService().userLogin(request.getParameter("user_email"), request.getParameter("user_password"), request.getParameter("user_role"));
        if(u != null) {
            HttpSession session = request.getSession();
            if (u.getRole().equals("admin")) {
                session.setAttribute("admin", u);
                response.sendRedirect("admins.jsp");
            } else if (u.getRole().equals("teacher")) {
                session.setAttribute("teacher", u);
                response.sendRedirect("teachers.jsp");
            } else if (u.getRole().equals("student")) {
                session.setAttribute("student", u);
                response.sendRedirect("students.jsp");
            }
        }else {
            response.sendRedirect("./login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
