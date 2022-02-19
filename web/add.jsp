<%--
  Created by IntelliJ IDEA.
  User: wangjinping
  Date: 2022/2/19
  Time: 下午4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>add page</title>
      <link rel="stylesheet"type="text/css" href="./static/css/bootstrap.css"/>
  </head>
  <body>
      <form action="/student" method="post">
          <p></p>
          <div class="form-inline">
              <label for="no">学号</label>
              <input type="text" class="form-control" id="no" name="no" placeholder="学号">
          </div>
          <p></p>
          <div class="form-inline">
              <label for="age">年龄</label>
              <input type="text" class="form-control" id="age" name="age" placeholder="年龄">
          </div>
          <p></p>
          <div class="form-inline">
              <label for="grade">年级</label>
              <input type="text" class="form-control" id="grade" name="grade" placeholder="年级">
          </div>
          <p></p>
          <button type="submit" class="btn btn-default">提交</button>
      </form>
  </body>
</html>
