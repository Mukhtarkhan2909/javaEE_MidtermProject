package com.example.courseinformation.module;

import lombok.*;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class TeacherCourses {
    private Long teacherId;
    private List<Courses> teacherCourses;
}
