<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
</head>
<body>
<form action="/employee/them" method="post">
    Tên: <input type="text" name="name" required><br>
    Tuổi: <input type="number" name="age" required><br>
    <button type="submit">Thêm</button>
</form>
<h2>Danh sách nhân viên</h2>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Tuổi</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="employee" items="${list}">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.age}</td>
            <td>
                <a href="/employee/sua/${employee.id}">Sửa</a>
                <a href="/employee/xoa/${employee.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
