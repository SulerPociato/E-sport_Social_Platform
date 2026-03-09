<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>图书详情</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div style="width:800px;margin:0 auto;text-align:center">
  <h2>图书详情</h2>
  <c:if test="${book != null}">
    <table border="1" style="width:100%;border-collapse: collapse;">
      <tr>
        <th>图书ID</th>
        <td>${book.bookId}</td>
      </tr>
      <tr>
        <th>图书名称</th>
        <td>${book.name}</td>
      </tr>
      <tr>
        <th>馆藏数量</th>
        <td>${book.number}</td>
      </tr>
    </table>
  </c:if>
  <c:if test="${book == null}">
    <p>图书不存在</p>
  </c:if>
  <br/>
  <a href="/book/list">返回列表</a>
</div>
</body>
</html>