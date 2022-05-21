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
<form action="addsave.jsp" method="post">
<section class="position-relative py-4 py-xl-5">
    <div class="container position-relative">
        <div class="row d-flex justify-content-center">
            <div class="col-md-8 col-lg-6 col-xl-5 col-xxl-4">
                <div class="card mb-5">
                    <div class="card-body p-sm-5">
                        <h2 class="text-center mb-4">请填写学生信息</h2>
                        <form method="post">
                            <div class="mb-3"><input class="form-control" type="text" id="name-2" name="num" placeholder="学号"></div><input class="form-control" type="text" id="name-1" name="name" placeholder="姓名">
                            <div class="mb-3"></div><input class="form-control" type="text" id="name-3" name="sex" placeholder="性别">
                            <div class="mb-3"></div><input class="form-control" type="text" id="email-2" name="birth" placeholder="生日">
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
</body>

</html>
