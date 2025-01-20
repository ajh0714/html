<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
    <h1>setTag : 변수선언,값대입, 변수삭제</h1>

    <%
        int a = 200;
    %>
    <!--                   el 표현식 -->
    <c:set var="num" value="${300}"></c:set>
    <c:set var="name" value="${'홍길동'}"></c:set>
    <c:set var="aa" value="<%=a%>"></c:set>
    <c:set var="now" value="<%=new Date()%>"></c:set>
    <c:set var="result" value="${5 + 4}"></c:set>

    <hr/>
    <h1> ${''} EL Expresion : el표현식</h1>
    <ul>
        <li> a : <%= a%></li>
        <li> num : ${num}</li>
        <li> name : ${name}</li>
        <li> aa : ${aa} </li>
        <li> now : ${now} </li>
        <li> result : ${result} </li>

        <li>${5 + 9/2}   ,   ${'이순신'}</li>
        <li>jsp로 session값 사용하기 : <%=(String)session.getAttribute("username")%></li>
        <li>jstl의 el표현식으로 session값 사용하기 : ${username}</li>
        <li>
            <div>request, session, application내장객체의 변수를 직접 접근 할수있다.</div>
            jstl의 el표현식으로 session값 사용하기 : ${username}
        </li>
        <li>
            <div>변수 삭제 : scope 생명주기 : page,request,session,application</div>
            <c:remove var="result" scope="page"></c:remove>
            result : ${result}, userid : ${userid}
        </li>
    </ul>
</div>