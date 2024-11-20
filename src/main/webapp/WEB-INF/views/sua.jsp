<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Employee</title>
</head>
<body>
<h2>Sửa thông tin nhân viên</h2>
<form action="/employee/edit" method="post">
    <input type="hidden" name="id" value="${employee.id}">
    Tên: <input type="text" name="name" value="${employee.name}"><br>
    Tuổi: <input type="text" name="age" value="${employee.age}"><br>
    <button type="submit">Lưu</button>
</form>
</body>
</html>
