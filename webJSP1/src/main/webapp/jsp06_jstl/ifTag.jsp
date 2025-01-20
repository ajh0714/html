<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
    <h1>ifTag : 조건문</h1>
    <%--
        int num = Integer.parseInt(request.getParameter("num"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
    --%>
    <%//= num+5 %>, <%//=name %>, <%//= age+5 %>

    <h1> jstl에서 request하기</h1>
    <ul>
        <li> 번호 : ${param.num} </li>
        <li> 이름 : ${param.name} </li>
        <li> 나이 : ${param.age} </li>
    </ul>

    <h1> ifTag : else문이 없는 조건문, test속성에 조건식을 세운다.</h1>
    <c:if test="${true}">
        <div>참일때 실행되는 실행문,무조건 실행됨. ${param.name} </div>
    </c:if>

    <c:set var="age" value="${param.age}"></c:set>

    <c:if test="${age<20}">
        <div>${param.name}은 20세 미만입니다.</div>
    </c:if>
</div>