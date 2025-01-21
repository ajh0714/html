<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
<script>
    function bbsFormCheck(){
        if(document.getElementById("subject").value==""){
        alert("뉴스제목을 입력하세요.");
        return false;
    }
    return true;
    }
</script>
    <h1>뉴스 글등록폼</h1>

    <form method="post" action="<%=request.getContextPath()%>bbs/bbsWriteOk.jsp" onsubmit="return bbsFormCheck">
        <div>제목</div>
        <div><input type="text" name="subject" id="subject"/></div>
        <div>글내용</div>
        <div><textarea name="content"></textarea></div>
        <div>
            <input type="submit" value="뉴스등록하기"/>
            <input type="reset" value="다시쓰기"/>
        </div>
    </form>
</div>