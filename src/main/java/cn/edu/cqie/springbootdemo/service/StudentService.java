package cn.edu.cqie.springbootdemo.service;

import cn.edu.cqie.springbootdemo.dao.StudentDao;
import cn.edu.cqie.springbootdemo.domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    StudentDao studentDao;

    @Transactional(readOnly = false)
    public void saveStudent(Student student) {
        studentDao.saveStudent(student);

    }

    public List<Student> findAllStudents() {
        return studentDao.findAllStudents();
    }
}
