package com.example.courseinformation.controller;

import com.example.courseinformation.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/courses")
public class CourseController {
    @Autowired
    CourseService courseService;

    @GetMapping("/get-course/{courseId}")
    public ResponseEntity<?> getCourseInformation(@PathVariable Long courseId) {
        return ResponseEntity.ok(courseService.getCourseInformation(courseId));
    }

    @GetMapping("/student-courses/{studentId}")
    public ResponseEntity<?> getStudentCourses(@PathVariable Long studentId) {
        return ResponseEntity.ok(courseService.getStudentCourses(studentId));
    }

    @GetMapping("/teacher-courses/{teacherId}")
    public ResponseEntity<?> getTeacherCourses(@PathVariable Long teacherId) {
        return ResponseEntity.ok(courseService.getTeacherCourses(teacherId));
    }
}
