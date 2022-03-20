package com.example.enrollment_web;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.sql.Date;
import java.sql.Time;

public class Course {
    @JsonProperty ("CourseId") private final Integer courseId;
    @JsonProperty("CourseName")  private final String courseName;
    @JsonProperty("TeacherFirstName") private  String teacherFirstName;
    @JsonProperty("TeacherLastName") private  String teacherLastName;
    @JsonProperty("CourseType") private  String courseType;
    @JsonProperty("AcademicSemester") private  String academicSemester;
    @JsonProperty("SemesterNumber") private  Integer semesterNumber;
    @JsonProperty("AcademicYear") private  Integer academicYear;
    @JsonProperty("YearOfStudy") private  Integer yearOfStudy;
    @JsonProperty("TotalHours") private Integer totalHours;
    @JsonProperty("CourseCredits") private Integer courseCredits;
    @JsonProperty("Duration") private Integer duration;
    @JsonProperty("DateStart") private  Date dateStart;
    @JsonProperty("DateEnd") private  Date dateEnd;
    @JsonProperty("Day") private  String day;
    @JsonProperty("DepartmentName") private  String department;
    @JsonProperty("CourseMode") private  String courseMode;
    @JsonProperty("LinkMeeting") private  String linkMeeting;
    @JsonProperty("Password") private  String password;
    @JsonProperty("ClassRoomNumber") private  Integer roomNumber;
    @JsonProperty("BuildingName") private  String buildingName;





    public Course(Integer courseId, String courseName, String teacherFirstName, String teacherLastName, String courseType, String academicSemester, Integer semesterNumber, Integer academicYear, Integer yearOfStudy, Date dateStart, Date dateEnd, String day, String courseMode, String linkMeeting, String password, Integer roomNumber, String buildingName, String faculty, String department, String degreeType, Integer totalHours, Integer courseCredits, Integer duration) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.teacherFirstName = teacherFirstName;
        this.teacherLastName = teacherLastName;
        this.courseType = courseType;
        this.academicSemester = academicSemester;
        this.semesterNumber = semesterNumber;
        this.academicYear = academicYear;
        this.yearOfStudy = yearOfStudy;
        this.dateStart = dateStart;
        this.dateEnd = dateEnd;
        this.day = day;
        this.courseMode = courseMode;
        this.linkMeeting = linkMeeting;
        this.password = password;
        this.roomNumber = roomNumber;
        this.buildingName = buildingName;
        this.department = department;
        this.totalHours = totalHours;
        this.courseCredits = courseCredits;
        this.duration = duration;
    }

    public String getCourseName() {
        return courseName;
    }

    public String getTeacherFirstName() {
        return teacherFirstName;
    }

    public String getTeacherLastName() {
        return teacherLastName;
    }

    public String getCourseType() {
        return courseType;
    }

    public String getAcademicSemester() {
        return academicSemester;
    }

    public Integer getSemesterNumber() {
        return semesterNumber;
    }

    public Integer getAcademicYear() {
        return academicYear;
    }

    public Integer getYearOfStudy() {
        return yearOfStudy;
    }

    public Date getDateStart() {
        return dateStart;
    }

    public Date getDateEnd() {
        return dateEnd;
    }

    public String getDay() {
        return day;
    }

    public String getCourseMode() {
        return courseMode;
    }

    public String getLinkMeeting() {
        return linkMeeting;
    }

    public String getPassword() {
        return password;
    }

    public Integer getRoomNumber() {
        return roomNumber;
    }

    public String getBuildingName() {
        return buildingName;
    }

    public String getDepartment() {
        return department;
    }


    public Integer getTotalHours() {
        return totalHours;
    }

    public Integer getCourseCredits() {
        return courseCredits;
    }

    public Integer getDuration() {
        return duration;
    }

    @Override
    public String toString() {
        return "Course{" +
                "courseId=" + courseId +
                ", courseName='" + courseName + '\'' +
                ", teacherFirstName='" + teacherFirstName + '\'' +
                ", teacherLastName='" + teacherLastName + '\'' +
                ", courseType='" + courseType + '\'' +
                ", academicSemester='" + academicSemester + '\'' +
                ", semesterNumber=" + semesterNumber +
                ", academicYear=" + academicYear +
                ", yearOfStudy=" + yearOfStudy +
                ", dateStart=" + dateStart +
                ", dateEnd=" + dateEnd +
                ", day='" + day + '\'' +
                ", courseMode='" + courseMode + '\'' +
                ", linkMeeting='" + linkMeeting + '\'' +
                ", password='" + password + '\'' +
                ", roomNumber=" + roomNumber +
                ", buildingName='" + buildingName + '\'' +
                ", department='" + department + '\'' +
                ", totalHours=" + totalHours +
                ", courseCredits=" + courseCredits +
                ", duration=" + duration +
                '}';
    }
}