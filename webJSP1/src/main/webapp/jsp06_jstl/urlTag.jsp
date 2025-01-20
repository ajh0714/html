<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="home" value="/index.jsp"></c:url>
<c:url var="if" value="/jsp05.jstl/ifTag.jsp">
    <c:param name="num" value="1234"></c:param>
    <c:param name="name" value="손흥민"></c:param>
    <c:param name="age" value="27"></c:param>
</c:url>
<c:url var="session1" value="/jsp05_session/sessionSave.jsp"></c:url>

<div class="container">
    <a href="${home}">홈</a><br/>
    <a href="${if1}">ifTag.jsp?num=1234&name=세종대왕&age=17</a><br/>
    <a href="${session1}">sessionSave.jsp</a><br/>

</div>