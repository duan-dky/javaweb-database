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
<%
    request.setCharacterEncoding("utf-8");
    String id=request.getParameter("id");
    Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student?useUnicode=true&characterEncoding=utf-8","root","796184@.cnCN");
    Statement stat=connection.createStatement();
    ResultSet resultSet=stat.executeQuery("select * from student where id="+id);
    resultSet.next();
%>
<form action="editsave.jsp" method="post">
    <section class="position-relative py-4 py-xl-5">
        <div class="container position-relative">
            <div class="row d-flex justify-content-center">
                <div class="col-md-8 col-lg-6 col-xl-5 col-xxl-4">
                    <div class="card mb-5">
                        <div class="card-body p-sm-5">
                            <h2 class="text-center mb-4">请填写学生信息</h2>
                            <form method="post">
                                <div class="mb-3"><input class="form-control" type="text" id="name-2" name="num" value="<%=resultSet.getString(1)%>" placeholder="学号"></div><input class="form-control" type="text" id="name-1" name="name" value="<%=resultSet.getString(2)%>" placeholder="姓名">
                                <div class="mb-3"></div><input class="form-control" type="text" id="name-3" name="sex" value="<%=resultSet.getString(3)%>" placeholder="性别">
                                <div class="mb-3"></div><input class="form-control" type="text" id="email-2" name="birth" value="<%=resultSet.getString(4)%>" placeholder="生日"><input type="hidden" name="id" value="<%=id%>">
                                <div></div>
                            </form><button class="btn btn-primary d-block w-100" type="submit">提交</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</form>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<%
    resultSet.close();
    stat.close();
%>
</body>
</html>

