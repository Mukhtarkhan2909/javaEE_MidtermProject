package com.example.Mid_Term_Project.services;

import com.example.Mid_Term_Project.entities.Course;

import java.util.List;

public class CourseService {
    ServiceDao dao = new ServiceDao();
    public boolean addCourse(Course course) {
        return dao.addCourse(course);
    }
    public List<Course> getCourses() {
        return dao.listAllCourses();
    }
    public boolean updateCourse(Course course) {
        return dao.updateCourse(course);
    }
}
