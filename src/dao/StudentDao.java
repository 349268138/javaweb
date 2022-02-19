package dao;

import entity.Student;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

/**
 * @author wangjinping
 * @Description
 * @CreateDateon 2022/2/19.
 */
public class StudentDao {
    private static List<Student> studentList = new Vector<Student>();

    static {
        studentList = new ArrayList<>();
        Student student = new Student();
        student.setNo("20201321233");
        student.setAge(18);
        student.setGrade(1);
        studentList.add(student);
    }

    public static List<Student> obtainStudents() {
        return studentList;
    }

    public static void addStudent(Student student) {
        studentList.add(student);
    }
}
