<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
    <h1>redirectTag : forward를 하는 태그이다.</h1>

    <!-- 홈페이지로 자동 이동한다. -->
    <c:redirect url="index.jsp">
        <c:param name="page" value="5"></param>
    </c:redirect>
</div>