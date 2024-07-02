<%--
  Created by IntelliJ IDEA.
  User: WIN 10
  Date: 02/07/2024
  Time: 5:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Thông tin học sinh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Mã</th>
            <th>Họ và tên</th>
            <th>Địa chỉ</th>
            <th>Điểm</th>
            <th>Học lực</th>
        </tr>
        </thead>
        <tbody>
        <td>${studentByName.id}</td>
        <td>${studentByName.name}</td>
        <td>${studentByName.address}</td>
        <td>${studentByName.point}</td>
        <td>
            <c:choose>
                <c:when test="${student.point >= 8}">Học sinh giỏi</c:when>
                <c:when test="${student.point >= 6.5}">Học sinh khá</c:when>
                <c:when test="${student.point >= 5}">Học sinh trung bình</c:when>
                <c:when test="${student.point >= 3.5}">Học sinh yếu</c:when>
                <c:otherwise>Cook</c:otherwise>
            </c:choose>
        </td>
        </tbody>
    </table>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
