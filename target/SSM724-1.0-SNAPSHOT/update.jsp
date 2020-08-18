<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/7/17
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User</title>
</head>
<body>
    <h4>修改页面</h4>
    <form action="update" method="post">
    <div class="box">
        编号<input type="text" name="uid" readonly="readonly" value="${user.uid}"/><p />
        用户名<input type="text" name="username" value="${user.username}"/><p />
        密码<input type="text" name="password" value="${user.password}"/><p />
        性别<input type="text" name="sex" value="${user.sex}"/><p />
        电话<input type="text" name="tel" value="${user.tel}"/><p />
        <input type="submit" value="修改"/>
    </div>
    </form>

</body>
</html>
