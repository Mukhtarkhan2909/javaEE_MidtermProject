package com.example.courseinformation.module;

import lombok.*;
import lombok.extern.java.Log;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class StudentCourses {
    private Long studentId;
    private List<Courses> studentCourses;

}
