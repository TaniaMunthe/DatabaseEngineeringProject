package com.example.enrollment_web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class services {
    private final EntityDAO<Day> days;
    private final EntityDAO<Employee> employeeEntityDAO;
    private final EntityDAO<Course> courseEntityDAO;

    @Autowired
    public services(@Qualifier("ScheduleDB") EntityDAO<Day> days,
                    @Qualifier("EmployeeDB") EntityDAO<Employee> employee,
                    @Qualifier("CourseDB") EntityDAO<Course> courseEntityDAO) {
        this.days = days;
        this.employeeEntityDAO = employee;
        this.courseEntityDAO = courseEntityDAO;
    }

    public List<Day> getSchedule(Integer id){
        return days.getAll(id);
    }
    public Employee updateEmployee(Integer id, Employee employee){
        return employeeEntityDAO.updateEmployee(id, employee);
    }
    public Boolean newCourse(Integer id, Course course){
        return courseEntityDAO.addNew(id, course);
    }
}
