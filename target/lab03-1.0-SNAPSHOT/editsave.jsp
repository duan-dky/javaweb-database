<%--
  Created by IntelliJ IDEA.
  User: duan
  Date: 2022/5/21
  Time: 下午2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改学生信息</title>
    <script language="javascript">
        function jump(address) {
            if (address == null)
                window.location.href="http://www.baidu.com";
            else
                window.location.href=address;
        }
    </script>
</head>
<body>
<%
        request.setCharacterEncoding("utf-8");
        String sno=request.getParameter("num");
        String sname=request.getParameter("name");
        String ssex=request.getParameter("sex");
        String birth=request.getParameter("birth");
        String id=request.getParameter("id");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student?useUnicode=true&characterEncoding=utf-8","root","796184@.cnCN");
        Statement stat=con.createStatement();
        String sql="update student set sname='"+sname+"',sno='"+sno+"',ssex='"+ssex+"',birth='"+birth+"' where id='"+id+"'";
        int i=stat.executeUpdate(sql);
        if(i==1){
            out.println("<script language=\"javascript\">\n" +
                    "alert('修改成功！');\n" +
                    "jump(\"index.jsp\");\n"+
                    "</script>\n");
        }
        else{
            out.println("<script language=\"javascript\">\n" +
                    "alert('修改失败，请重新修改！');\n" +
                    "jump(\"edit.jsp\");\n"+
                    "</script>\n");
        }
%>
</body>
</html>