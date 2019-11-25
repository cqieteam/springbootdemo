package cn.edu.cqie.springbootdemo.dao;

import cn.edu.cqie.springbootdemo.domain.Student;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StudentDao {

    public void saveStudent(Student student);
    public List<Student> findAllStudents();

}
