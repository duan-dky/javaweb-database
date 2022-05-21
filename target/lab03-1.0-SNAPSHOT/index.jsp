<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>lab03</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
<div class="col-md-8 col-xl-6 text-center mx-auto">
    <h2 class="display-6 fw-bold">欢迎使用学生管理系统</h2>
    <p class="text-muted">
        <a href="add.jsp">请点击下方按钮进行添加</a>
    </p>
</div>
<div class="table-responsive">
    <table class="table">
        <thead>
        <tr>
            <th>序号</th>
            <th>姓名</th>
            <th>学号</th>
            <th>性别</th>
            <th>生日</th>
        </tr>
        </thead>
        <tbody>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student?useUnicode=true&characterEncoding=utf-8","root","796184@.cnCN");
    Statement state=connection.createStatement();
    ResultSet resultSet=state.executeQuery("select * from student");
    while (resultSet.next()) {
        int id=resultSet.getInt(5);
        out.println(
                "\t\t<tr>\n" +
                        "\t\t\t<td>"+id+"<a href='edit.jsp?id="+id+"'>修改</a><a href='del.jsp?id="+id+"'>删除</a></td>\n"+
                "\t\t\t<td>"+resultSet.getString(1)+"</td>\n" +
                "\t\t\t<td>"+resultSet.getString(2)+"</td>\n" +
                "\t\t\t<td>"+resultSet.getString(3)+"</td>\n" +
                "\t\t\t<td>"+resultSet.getString(4)+"</td>\n" +
                "\t\t</tr>\n"
        );
    }
%>
        </tbody>
    </table>
</div>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>