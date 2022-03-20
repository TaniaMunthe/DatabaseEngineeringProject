package com.example.enrollment_web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import java.util.Arrays;
import java.util.List;

@Repository("CourseDB")
public class CourseDBHandler implements EntityDAO<Course> {
    private final JdbcTemplate jdbcTemplate;


    @Autowired
    public CourseDBHandler(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Course> getAll(Integer id) {
        return null;
    }

    @Override
    public Course updateEmployee(Integer id, Course entity) {
        return null;
    }

    @Override
    public Boolean addNew(Integer id, Course entity) {
        System.out.println("en:" + entity);
        try{
            int departmentId =
                    Integer.parseInt(getField("department", "department_id", "department_name", entity.getDepartment(), null, null));
            int courseTypeId =
                    Integer.parseInt(getField("course_type", "course_type_id", "course_type", entity.getCourseType(), null, null));
            int courseModeId =
                    Integer.parseInt(getField("course_mode", "course_mode_id", "course_mode", entity.getCourseMode(), null, null));
            String sqlAd = "INSERT INTO university_management_system.academic_details " +
                    "(academic_semester, semester_number, academic_year, year_of_study) " +
                    "VALUES ( '" +
                    entity.getAcademicSemester() + "', " +
                    entity.getSemesterNumber()  + ", " +
                    entity.getAcademicYear()  + ", " +
                    entity.getYearOfStudy() +")";
            System.out.println(sqlAd);

            jdbcTemplate.update(
                    sqlAd
            );

            Integer academicDetailsId = getLastId();
            System.out.println("academic detail id" + academicDetailsId);
            final String courseSQL = "INSERT  INTO university_management_system.course " +
                    "(department_id, course_type_id, course_mode_id, academic_details_id, " +
                    "employee_id, course_name, " +
                    "total_hours, course_credits, course_start_date, " +
                    "course_end_date, course_day,duration) VALUES " +
                    "( "+
                    departmentId + ", " +
                    courseTypeId  + ", " +
                    courseModeId  + ", " +
                    academicDetailsId + ", " +
                    id  + ", '" +
                    entity.getCourseName()  + "', " +
                    entity.getTotalHours()  + ", " +
                    entity.getCourseCredits() + ", '" +
                    entity.getDateStart()  + "', '" +
                    entity.getDateEnd()  + "', '" +
                    entity.getDay()  + "', '" +
                    entity.getDuration() +
                    "') ";
            System.out.println("courseSQL: " + courseSQL);
            jdbcTemplate.update(
                    courseSQL
            );
            Integer courseId = getLastId();
            final String teacherIdSQL = "SELECT t.teacher_id FROM university_management_system.user\n" +
                    "    INNER JOIN university_management_system.employee e on user.user_id = e.user_id\n" +
                    "    INNER JOIN university_management_system.teacher t on e.employee_id = t.employee_id\n" +
                    "    INNER JOIN university_management_system.position p on e.position_id = p.position_id\n" +
                    "    WHERE " +
                    "p.position_name = 'Teacher' " +
                    "AND first_name = '" + entity.getTeacherFirstName() +"'" +
                    "AND last_name = '"+ entity.getTeacherLastName()+ "'";
            System.out.println("teacherIdSQL: " + teacherIdSQL);
            SqlRowSet teacherRS = jdbcTemplate.queryForRowSet(teacherIdSQL);
            teacherRS.last();
            int teacherId = teacherRS.getInt(1);
            final String helperTableSQL = "INSERT INTO  university_management_system.teacher_course (course_id, teacher_id) " +
                    "VALUES (" +
                    courseId + ", " +
                    teacherId +
                    ")";
            System.out.println("helperTableSQL: " + helperTableSQL);
            jdbcTemplate.update(
                    helperTableSQL
            );
            Integer onlineModeId = null;
            Integer stationaryModeId = null;
            if (entity.getCourseMode().equals("Online")){
                final String courseOnlineSQL = "INSERT INTO university_management_system.mode_online (password, meeting_link)" +
                        "VALUES ( '" +
                        entity.getPassword() + "', '" +
                        entity.getLinkMeeting() +
                        "' )";
                System.out.println("add online: " + courseOnlineSQL);
                jdbcTemplate.update(
                        courseOnlineSQL
                );
                onlineModeId = getLastId();

            }else {
                String buildingId =
                        (getField("building", "building_id", "building_name", entity.getBuildingName(), null, null));
                Integer classRoomId =
                        Integer.parseInt(getField("classroom", "classroom_id", "building_id", buildingId, "room_number", String.valueOf(entity.getRoomNumber())));
                final String courseStationaryID = "INSERT INTO university_management_system.mode_stationary (classroom_id) VALUES (?)";
                jdbcTemplate.update(
                        courseStationaryID,
                        classRoomId
                );
                stationaryModeId  = getLastId();
            }
            String addToFinalSQL  = "INSERT INTO university_management_system.course_final_location " +
                    "(course_id, mode_online_id, mode_stationary_id) VALUES (?,?,?)";
            jdbcTemplate.update(
                    addToFinalSQL,
                    courseId,
                    onlineModeId,
                    stationaryModeId
            );
            return true;
        }catch (Exception e){
            System.out.println("Error: "  + Arrays.toString(e.getStackTrace()));
            return false;
        }
    }
    private Integer getLastId(){
        final String lastIDSQL = "SELECT LAST_INSERT_ID()";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(lastIDSQL);
        rowSet.last();
        return rowSet.getInt(1);
    }
    private String getField(String object, String searchField, String filter, String filterValue, String secondFilter, String secondFilterValue){
        String sqlGetUserId = "SELECT " + searchField +" FROM university_management_system." + object +" WHERE " +
                filter +" = '" + filterValue + "'";
        if (secondFilter != null){
            sqlGetUserId += " AND " + secondFilter + " = '" + secondFilterValue + "'";
        }
        System.out.println(sqlGetUserId);
        final SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sqlGetUserId);
        rowSet.last();
        System.out.println(rowSet.getString(searchField));
        return rowSet.getString(searchField);
    }
}
