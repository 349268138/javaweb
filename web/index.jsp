<%@ page import="entity.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: wangjinping
  Date: 2022/2/19
  Time: 下午4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>index page</title>
      <link rel="stylesheet" type="text/css" href="./static/css/bootstrap.css"/>
  </head>

  <body>
      <%
          List<Student> studentList = (List)request.getSession().getAttribute("studentList");
          if (studentList == null) {
              response.sendRedirect("/student");
              return;
          }
      %>

      <table class="table table-bordered table-hover">
          <tr>
              <th>学号</th>
              <th>年龄</th>
              <th>班级</th>
          </tr>
          <% for(Student student : studentList){ %>
          <%="<tr>" %>
          <%="<td>"+student.getNo()+"</td>"%>
          <%="<td>"+student.getAge()+"</td>"%>
          <%="<td>"+student.getGrade()+"</td>"%>
          <%="</tr>" %>
          <% } %>
      </table>

      <a class="btn btn-default" href="add.jsp" role="button">添加</a>
  </body>
</html>
