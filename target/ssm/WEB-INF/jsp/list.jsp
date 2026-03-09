<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>图书列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div style="width:800px;margin:0 auto;text-align:center">
    <h2>图书列表</h2>
    <table border="1" style="width:100%;border-collapse: collapse;">
        <tr>
            <th>图书ID</th>
            <th>图书名称</th>
            <th>馆藏数量</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${list}" var="book">
            <tr>
                <td>${book.bookId}</td>
                <td>${book.name}</td>
                <td>${book.number}</td>
                <td>
                    <a href="${book.bookId}/detail">查看详情</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href="/book/list">刷新列表</a>
</div>
</body>
</html>