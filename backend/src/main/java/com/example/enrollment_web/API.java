package com.example.enrollment_web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

import javax.servlet.annotation.WebFilter;
import java.util.List;

@CrossOrigin
@RequestMapping("api")
@RestController
@WebFilter
public class API {
    private final services services;

    @Autowired
    public API(com.example.enrollment_web.services services) {
        this.services = services;
    }
    @GetMapping(
            path = "student/{studentId}/schedule",
            produces = {MediaType.APPLICATION_JSON_VALUE}
    )
    public List<Day> getAllProductsVC(@PathVariable("studentId") Integer id){
        return services.getSchedule(id);
    }
    @PutMapping(
            path = "employee/{employeeId}/update",
            consumes = {MediaType.APPLICATION_JSON_VALUE},
            produces = {MediaType.APPLICATION_JSON_VALUE}
    )
    public Employee updateEmployee(@PathVariable("employeeId") Integer id, @RequestBody Employee employee){
        System.out.println("Employee r: " + employee);
        return services.updateEmployee(id, employee);
    }
    @PostMapping(
            path = "employee/{employeeId}/courses/newcourse",
            consumes = {MediaType.APPLICATION_JSON_VALUE},
            produces = {MediaType.APPLICATION_JSON_VALUE}
    )
    public Boolean newCourse(@PathVariable("employeeId") Integer id, @RequestBody Course course){
        System.out.println("New course: " + course);
        return services.newCourse(id, course);
    }
}
