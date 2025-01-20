<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

    //세션객체를 지우고
    session.invalidate();

    //홈페이지(index.jsp)로 이동하기
    response.sendRedirect(request.getContextPath()+"/");
%>