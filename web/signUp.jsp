<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-01-04
  Time: 오후 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>

<style>
    #if{
        width: 0px;
        height: 0px;
        border: 0px;
    }

</style>

<html>
<head>
    <title>signUp</title>
</head>
<body>
    <form action="signUpQuery.jsp" method="post" target="param">
        ID : <input type="text" name="id"><br>
        PW : <input type="password" name="password"><br>
        이름 : <input type="text" name="name"><br>
        성별 : 남<input type="radio" name="gender" value="남">
                여<input type="radio" name="gender" value="여"><br>
        <input type="submit" value="가입">
    </form>

    <iframe id="if" name="param"></iframe>
</body>
</html>
