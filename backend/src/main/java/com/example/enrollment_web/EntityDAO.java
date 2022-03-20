package com.example.enrollment_web;

import com.example.enrollment_web.Employee;

import java.util.List;

public interface EntityDAO<T> {
    List<T> getAll(Integer id);
    T updateEmployee (Integer id, T entity);
    Boolean addNew(Integer id, T entity);
}
