package com.springboot.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class StudentDAO implements StudentService{
	@Autowired
	StudentRepo studentrepo;
	@Override
	public void insert(Student student)
	{
		studentrepo.save(student);
	}
	@Override
	public List<Student> displayAll() {
		return studentrepo.findAll();
	}
	@Override
	public void delete_d(int id) {
		
		studentrepo.deleteById(id);
	}

	@Override
	public Student getsingledata(int id) {
		Student S = studentrepo.getById(id);
		return S;
	}
}
