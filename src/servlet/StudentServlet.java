package servlet;

import dao.StudentDao;
import entity.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author wangjinping
 * @Description
 * @CreateDateon 2022/2/19.
 */
public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().setAttribute("studentList", StudentDao.obtainStudents());
        resp.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Student student = new Student();
        student.setNo(req.getParameter("no"));
        student.setAge(Integer.parseInt(req.getParameter("age")));
        student.setGrade(Integer.parseInt(req.getParameter("grade")));
        StudentDao.addStudent(student);

        req.getSession().setAttribute("studentList", StudentDao.obtainStudents());
        resp.sendRedirect("index.jsp");
    }
}
