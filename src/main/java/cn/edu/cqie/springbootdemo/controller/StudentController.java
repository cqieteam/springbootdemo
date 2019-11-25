package cn.edu.cqie.springbootdemo.controller;

import cn.edu.cqie.springbootdemo.domain.Student;
import cn.edu.cqie.springbootdemo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    StudentService studentService;

    @RequestMapping("/studentList")
    public String index() {

        return "student/StudentList";
    }

    @RequestMapping("/login")
    // @ResponseBody
    public String login() {

        return "student/Login";
        //  return students;
    }

    @RequestMapping("/list")
    // @ResponseBody
    public String list(ModelMap modelMap) {
        System.out.println("list-----------------");
        List<Student> students = studentService.findAllStudents();
        modelMap.put("students", students);
        System.out.println(students);
        return "student/StudentList";
        //  return students;
    }

    @RequestMapping("/saveStudent")
    public String saveStudent(Student student) {
        studentService.saveStudent(student);
        return "";
    }

}
