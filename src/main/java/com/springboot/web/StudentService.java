package com.springboot.web;

import java.util.List;

public interface StudentService {
void insert(Student student);
List<Student> displayAll();
void delete_d(int id);
Student getsingledata(int id);
}
