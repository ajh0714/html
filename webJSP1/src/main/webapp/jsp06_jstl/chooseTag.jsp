<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
    <h1> chooseTag : 다중if문, switch문</h1>

    <c:choose>
        <c:when test="${param.name=='gildong'}">
            <h2>당신의 이름은 ${param.name}입니다.</h2>
        </c:when>
        <c:when test="${param.age>=28}">
             <h2>당신의 나이는 28세 이상입니다.</h2>
        </c:when>
        <c:otherwise>
            <!-- 생략가능 -->
            <h2>당신의 나이는 28세 미만입니다.</h2>
        </c:otherwise>
    </c:choose>
    <img src="<%=request.getContextPath()%>/image/img1.jpg"/>
</div>