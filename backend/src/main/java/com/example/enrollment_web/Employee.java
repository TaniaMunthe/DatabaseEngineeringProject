package com.example.enrollment_web;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class Employee {
    @JsonProperty("FirstName") private final String firstName;
    @JsonProperty("LastName") private final String lastName;
    @JsonProperty("FacultyName") private final String facultyName;
    @JsonProperty("Position") private final String position;
    @JsonProperty("Gender") private final String gender;
    @JsonProperty("DateOfBirth") private final Date dateOfBirth;
    @JsonProperty("IsAdmin") private final Boolean isAdmin;
    @JsonProperty("EmployeeId") private final Integer employeeId;

    public Employee(String firstName, String lastName, String facultyName, String position, String gender, Date dateOfBirth, Boolean isAdmin, Integer employeeId) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.facultyName = facultyName;
        this.position = position;
        this.gender = gender;
        this.dateOfBirth = dateOfBirth;
        this.isAdmin = isAdmin;
        this.employeeId = employeeId;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", facultyName='" + facultyName + '\'' +
                ", position='" + position + '\'' +
                ", gender='" + gender + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", isAdmin=" + isAdmin +
                ", employeeId=" + employeeId +
                '}';
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getFacultyName() {
        return facultyName;
    }

    public String getPosition() {
        return position;
    }

    public String getGender() {
        return gender;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public Boolean getAdmin() {
        return isAdmin;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }
}
