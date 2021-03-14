package com.example.Mid_Term_Project.servlets;

import com.example.Mid_Term_Project.entities.Course;
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

@WebServlet("/addCourse")
public class AddCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Course c = new Course();
        c.setCourseName(request.getParameter("course_name"));
        c.setDescription(request.getParameter("description"));
        c.setPrice(Integer.parseInt(request.getParameter("price")));
        c.setDurationInWeeks(Integer.parseInt(request.getParameter("duration_in_weeks")));
        c.setDegreeCertificateOffered(request.getParameter("degree_certificate_offered"));
        CourseService s = new CourseService();
        boolean state = s.addCourse(c);
        if (state) {
            out.println("<h1> Course successfully added</h1>");
            request.getRequestDispatcher("list_all_programs.jsp").include(request, response);;
        } else {
            out.println("<h1>Course already exists</h1>");
            request.getRequestDispatcher("add_program.jsp").include(request, response);;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
