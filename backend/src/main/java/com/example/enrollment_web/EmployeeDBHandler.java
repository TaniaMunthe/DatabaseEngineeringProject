package com.example.enrollment_web;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("EmployeeDB")
public class EmployeeDBHandler implements EntityDAO<Employee> {
    private final JdbcTemplate jdbcTemplate;

    public EmployeeDBHandler(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Employee> getAll(Integer id) {
        return null;
    }

    @Override
    public Employee updateEmployee(Integer id, Employee entity) {
        //get userId
        final String sqlGetUserId = "SELECT user_id FROM university_management_system.employee where employee_id =  " + id;
        final SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sqlGetUserId);
        rowSet.last();
        Integer userId = rowSet.getInt("user_id");
        final String sqlGenderId = "SELECT gender_id FROM university_management_system.gender where gender =  '" + entity.getGender() +"'";
        final SqlRowSet rowSetGender = jdbcTemplate.queryForRowSet(sqlGenderId);
        rowSetGender.last();
        Integer genderId = rowSetGender.getInt("gender_id");
        final String sql = "UPDATE university_management_system.user SET first_name = ?, last_name = ?, gender_id = ?, birth_of_date = ? " +
                "WHERE user_id = ?";
        jdbcTemplate.update(
                sql,
                entity.getFirstName(),
                entity.getLastName(),
                genderId,
                entity.getDateOfBirth(),
                userId
        );

        return new Employee(
                entity.getFirstName(),
                entity.getLastName(),
                entity.getFacultyName(),
                entity.getPosition(),
                entity.getGender(),
                entity.getDateOfBirth(),
                entity.getAdmin(),
                id);
    }

    @Override
    public Boolean addNew(Integer id, Employee entity) {
        return null;
    }
}
