package com.example.Mid_Term_Project.services;

import com.example.Mid_Term_Project.entities.Course;
import com.example.Mid_Term_Project.entities.Resource;
import com.example.Mid_Term_Project.entities.User;

import java.util.List;

public interface Service {
    User login(String username, String password, String role);
    boolean addUser(User user);
    List<User> listAllStudents();
    List<User> listAllTeachers();
    boolean addCourse(Course course);
    List<Course> listAllCourses();
    boolean createResource(Resource resource);
    List<Resource> listAllResources();
}
