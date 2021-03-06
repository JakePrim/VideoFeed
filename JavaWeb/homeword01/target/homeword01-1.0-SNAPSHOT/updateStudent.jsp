<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.homework.homeword01.pojo.Student" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改学生信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/add.css">
</head>
<body>
<%
    //获取学生信息
    Student student = (Student) request.getAttribute("student");
%>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="main.do">
                学生信息管理
            </a>
        </div>
    </div>
</nav>
<div class="container">
    <div class="jumbotron">
        <h1>Hello, 欢迎修改学生信息!</h1>
        <span style="color: red">${requestScope.error}</span>
    </div>
    <div class="page-header">
        <h3><small>修改</small></h3>
    </div>
    <form class="form-horizontal" action="update.do" method="post">
        <div class="form-group">
            <label for="num" class="col-sm-2 control-label">学号 ：</label>
            <div class="col-sm-8">
                <input name="num" class="form-control" id="num" value="${requestScope.student.id}" readonly>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">姓名 ：</label>
            <div class="col-sm-8">
                <input name="name" class="form-control" id="name" value="${requestScope.student.name}">
            </div>
        </div>
        <div class="form-group">
            <label for="sex" class="col-sm-2 control-label">性别 ：</label>
            <select id="sex" name="sex" class="col-sm-2 form-control"
                    style="width: auto;margin-left: 15px">
                <option value="0" ${requestScope.student.sex == 0 ? "selected" : ""}>女生</option>
                <option value="1" ${requestScope.student.sex == 1 ? "selected" : ""}>男生</option>
            </select>
        </div>

        <div class="form-group">
            <label for="date" class="col-sm-2 control-label">出生日期 ：</label>
            <div class="col-sm-8">
                <input name="date" class="form-control" id="date" type="date" value="${requestScope.student.brithday}">
            </div>
        </div>

        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">邮箱 ：</label>
            <input type="email" id="email" name="email" style="padding-left: 15px"
                   value="${requestScope.student.email}">
        </div>
        <div class="form-group">
            <label for="class" class="col-sm-2 control-label">所在班级 ：</label>
            <select id="class" name="class">
                <c:forEach items="${requestScope.classes}" var="c">
                    <option value="${c.id}" ${requestScope.student.cid==c.id ? "selected" : ""}>${c.grade}-${c.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="desc" class="col-sm-2 control-label">备注 ：</label>
            <div class="col-sm-8">
                <input name="desc" class="form-control" id="desc" value="${requestScope.student.desc}">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary">保存</button>&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </form>
</div>
<footer class="text-center">
    copy@jakeprim
</footer>
</body>
</html>
