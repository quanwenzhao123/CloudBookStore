<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/7/17
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>

</head>
<body>
    <f:form action="insert" method="post" modelAttribute="user">
        <f:input type="text" path="username" placeholder="用户名" /><font color="red"><f:errors path="username" /></font><br/>
        <f:input type="password" path="password" placeholder="密码" /><font color="red"><f:errors path="password" /></font><br/>
        <f:input type="text" path="sex" placeholder="性别" /><font color="red"><f:errors path="sex" /></font><br/>
        <f:input type="text" path="tel" placeholder="电话" /><font color="red"><f:errors path="tel" /></font><br/>
        <input type="submit" value="插入">
    </f:form>


</body>
</html>
