package com.example.enrollment_web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@Repository("ScheduleDB")
public class ScheduleDBHandler implements EntityDAO<Day>

{
    private final JdbcTemplate jdbcTemplate;
    @Autowired
    public ScheduleDBHandler(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    @Override
    public List<Day> getAll(Integer studentId){
         final  String sql = "SELECT course_day FROM university_management_system.course " +
                 "INNER join university_management_system.student_course sc on course.course_id = sc.course_id WHERE sc.student_id = " + studentId;;
         return jdbcTemplate.query(
                 sql,
                 new DayMapper(studentId, jdbcTemplate)
         );
    }

    @Override
    public Day updateEmployee(Integer id, Day entity) {
        return null;
    }

    @Override
    public Boolean addNew(Integer id, Day entity) {
        return null;
    }
}

record DayMapper(Integer studentId,
                 JdbcTemplate jdbcTemplate) implements RowMapper<Day> {

    @Override
    public Day mapRow(ResultSet rs, int rowNum) throws SQLException {
        String courseDay = rs.getString("course_day");
        List<Day.CourseInfo> courses = new ArrayList<>();
        final String sql = "SELECT course.course_id, course_name FROM university_management_system.course " +
                "INNER join university_management_system.student_course sc on course.course_id = sc.course_id WHERE course_day = '" + courseDay + "' AND sc.student_id = " + studentId;
        courses = jdbcTemplate.query(
                sql,
                new CourseMapper()
        );
        return new Day(
                courses, courseDay
        );
    }

    public static class CourseMapper implements RowMapper<Day.CourseInfo> {


        @Override
        public Day.CourseInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
            String courseId = rs.getString("course_id");
            String courseName = rs.getString("course_name");
            Integer courseIdInteger = Integer.parseInt(courseId);
            return new Day.CourseInfo(
                    courseIdInteger, courseName
            );
        }

    }
}
