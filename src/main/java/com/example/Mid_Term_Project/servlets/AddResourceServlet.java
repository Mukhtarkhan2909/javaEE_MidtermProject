package com.example.Mid_Term_Project.servlets;

import com.example.Mid_Term_Project.entities.Resource;
import com.example.Mid_Term_Project.services.ResourceService;

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

@WebServlet("/addResource")
public class AddResourceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Resource r = new Resource();
        r.setResourceID(Integer.parseInt(request.getParameter("resource_id")));
        r.setResourceType(request.getParameter("resource_type"));
        r.setResourceOwner(request.getParameter("resource_owner"));
        r.setTitle(request.getParameter("resource_title"));
        r.setContent(request.getParameter("resource_content"));
        r.setCourseName(request.getParameter("resource_course"));
        java.sql.Date sqlDate = null;
        try {
            java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("resource_date"));
            sqlDate = new java.sql.Date(date.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        r.setDate(sqlDate);
        ResourceService s = new ResourceService();
        boolean state = s.addResource(r);
        if (state) {
            out.println("<div class=\"alert alert-success\" role=\"alert\">\r\n" +
                    " Resource successfully added\r\n" +
                    "</div>");
            request.getRequestDispatcher("list_all_programs.jsp").include(request, response);;
        } else {
            out.println("<div class=\"alert alert-danger\" role=\"alert\">\r\n" +
                    " Resource already exists\r\n" +
                    "</div>");
            request.getRequestDispatcher("add_program.jsp").include(request, response);;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
