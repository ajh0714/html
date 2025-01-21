<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
    #bbsList, #bbsList>li{
        margin:0; padding:0; list-style-type:none; overflow: auto;
    }
    #bbsList>li{
        width:10%; float:left; border-bottom: 1px solid; line-height: 40px;
    }
    #bbsList>li:nth-child(5n+2){width:60%}
</style>
<div class="container">
    <h1>BBS목록</h1>
    <c:if test="${logStatus=='Y'}">
    <div><a href="<%=request.getContextPath()%>/bbs/bbsWrite.jsp">글쓰기</a></div>
    </c:if>
    <ul id = "bbsList">
        <li>번호</li>
        <li>제목</li>
        <li>작성자</li>
        <li>조회수</li>
        <li>작성일</li>

        <li>100</li>
        <li>제목fff</li>
        <li>작성자ff</li>
        <li>0</li>
        <li>01/12 10:05</li>

        <li>99</li>
        <li>제목f</li>
        <li>작성자f</li>
        <li>0</li>
        <li>01/12 10:05</li>
    </ul>
</div>