package com.example.enrollment_web;
import com.example.enrollment_web.Course;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class Day {
    private final List<CourseInfo> courseList;
    private final String day;


    public Day(@JsonProperty ("CourseList") List<CourseInfo> courseList,
               @JsonProperty ("Day") String day) {
        this.courseList = courseList;
        this.day = day;
    }

    public String getDay() {
        return day;
    }

    public List<CourseInfo> getCourseList() {
        return courseList;
    }
    public static class CourseInfo{
        @JsonProperty("CourseId") private final Integer courseId;
        @JsonProperty("CourseName")private final String courseName;
        CourseInfo(Integer courseId, String courseName) {
            this.courseId = courseId;
            this.courseName = courseName;
        }



    }
}

