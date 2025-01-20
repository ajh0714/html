<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // logStatus세션변수 지우기

    session.removeAttribute("logStatus");

    //홈페이지로 이동
    //response.sendRedirect(request.getContextPath()+"/");
%>
<script>
    location.href="<%=request,getContextPath()%>/jsp01_request/Form.jsp";
</script>