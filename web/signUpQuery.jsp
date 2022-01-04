<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-01-04
  Time: 오후 5:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    Connection connection;
    Statement statement;
%>
<%
    request.setCharacterEncoding("UTF-8");
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1111");
        statement = connection.createStatement();
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try {
        String sql = "INSERT INTO my_mini_web_members VALUES (" +
                "'" + request.getParameter("id") + "'," +
                "'" + request.getParameter("password") + "'," +
                "'" + request.getParameter("name") + "'," +
                "'" + request.getParameter("gender") + "')";
        statement.executeUpdate(sql);
%>
<script>
    alert("회원가입을 환영합니다.");
</script>
<%
    } catch (SQLException e) {
%>
<script>
    alert("회원가입에 실패했습니다. 값을 다시 입력해주세요.");
</script>
<%
        e.printStackTrace();
    }
%>
</body>
</html>