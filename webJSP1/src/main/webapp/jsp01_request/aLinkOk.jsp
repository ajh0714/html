<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String username = request.getParameter("username");
    String userid = request.getParameter("userid");
    String addr = request.getParameter("addr");

    String age = request.getParameter("age");
    int age2 = Integer.parseInt(age);

    System.out.println("이름=>"+username);
    System.out.println("주소=>"+addr);
    System.out.println("나이=>"+(age2+2));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div>
    <table>
        <tr>
            <td>이름</td>
            <td><%=username%></td>
        <tr>
        <tr><td>이름</td><td><%=userid%></td><tr>
        <tr><td>주소</td><td><%=addr%></td><tr>
        <tr><td>나이</td><td><%=age%></td><tr>
    </table>
</div>
</body>
</html>