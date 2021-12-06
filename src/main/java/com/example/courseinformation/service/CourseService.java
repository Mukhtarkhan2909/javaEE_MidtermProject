package com.example.courseinformation.service;

import com.example.courseinformation.module.Courses;
import com.example.courseinformation.module.StudentCourses;
import com.example.courseinformation.module.TeacherCourses;

public interface CourseService {
    StudentCourses getStudentCourses(Long studentId);
    TeacherCourses getTeacherCourses(Long teacherId);
    Courses getCourseInformation(Long courseId);
}
