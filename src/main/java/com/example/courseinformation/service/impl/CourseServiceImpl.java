package com.example.courseinformation.service.impl;

import com.example.courseinformation.module.Courses;
import com.example.courseinformation.module.StudentCourses;
import com.example.courseinformation.module.TeacherCourses;
import com.example.courseinformation.service.CourseService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {

    @Override
    public StudentCourses getStudentCourses(Long studentId) {
        Courses course1 = new Courses();
        course1.setId(1L);
        course1.setName("Course1");
        Courses course2 = new Courses();
        course2.setId(1L);
        course2.setName("Course2");
        List<Courses> coursesList = new ArrayList<>();
        coursesList.add(course1);
        coursesList.add(course2);
        return new StudentCourses(studentId, coursesList);
    }

    @Override
    public TeacherCourses getTeacherCourses(Long teacherId) {
        Courses course1 = new Courses();
        course1.setId(1L);
        course1.setName("Course1");
        Courses course2 = new Courses();
        course2.setId(1L);
        course2.setName("Course2");
        List<Courses> coursesList = new ArrayList<>();
        coursesList.add(course1);
        coursesList.add(course2);
        return new TeacherCourses(teacherId, coursesList);
    }

    @Override
    public Courses getCourseInformation(Long courseId) {
        Courses course = new Courses();
        course.setId(courseId);
        course.setName("JavaEE");
        return course;
    }
}
