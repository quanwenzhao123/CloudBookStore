<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/7/15
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>
    <link type="text/css" rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
</head>
<body>
<div><h3>首页</h3></div>
<a href="/insertimport">新增</a>
<c:if test="${pageInfo.list != null}">
    <table class="table table-striped table-bordered table-hover">
        <tr>
            <th>uid</th>
            <th>username</th>
            <th>password</th>
            <th>sex</th>
            <th>tel</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${pageInfo.list}" var="c">
            <tr>
                <td>&nbsp;${c.uid}</td>
                <td>&nbsp;${c.username}</td>
                <td>&nbsp;${c.password}</td>
                <td>&nbsp;${c.sex}</td>
                <td>&nbsp;${c.tel}</td>
                <td><a href="delete?uid=${c.uid}">删除</a>
                    <a href="selectUserByUid?uid=${c.uid}">修改</a> </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<div style="text-align: center">
    <div style="text-align: center">
        当前${pageInfo.pageNum}页,共${pageInfo.pages}页,总共${pageInfo.total}条记录
    </div>
    <div>
        <ul class="pagination">
            <li>
                <a href="${pageContext.request.contextPath}/Users?pageNum=1">首页</a>
            </li>
            <c:if test="${pageInfo.hasPreviousPage}">
                <li>
                    <a href="${pageContext.request.contextPath}/Users?pageNum=${pageInfo.pageNum-1}"
                       aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            </c:if>
            <li>
                <c:forEach items="${pageInfo.navigatepageNums}" var="page_Nums">
                <c:if test="${page_Nums==pageInfo.pageNum}">
            <li class="active"><a href="#">${page_Nums}</a> </li>
            </c:if>
            <c:if test="${page_Nums!=pageInfo.pageNum}">
                <li>
                    <a href="${pageContext.request.contextPath}/Users?pageNum=${page_Nums}">${page_Nums}</a>
                </li>
            </c:if>
            </c:forEach>
            </li>
            <c:if test="${pageInfo.hasNextPage}">
                <li>
                    <a href="${pageContext.request.contextPath}/Users?pageNum=${pageInfo.pageNum+1}"
                       aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:if>
            <li><a href="${pageContext.request.contextPath}/Users?pageNum=${pageInfo.pages}">末页</a> </li>
        </ul>
    </div>
</div>
<script type="text/javascript" src="static/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>
