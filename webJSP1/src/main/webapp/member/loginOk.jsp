<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.ict.home.MemberDAO"%>
<%@ page import="com.ict.home.MemberVO2"%>

<%
    //이전페이지(로그인폼)에 입력된 아이디, 비밀번호를 서버로 가져온다.
    String userid = request.getParameter("userid");
    String userpwd = request.getParameter("userpwd");

    //DB조회, select문 사용
    MemberDAO dao = new MemberDAO();
    MemberVO2 vo = dao.loginSelect(userid, userpwd);

    if(vo.getUserid() != null && vo.getUsername() != null){//로그인 성공 -홈으로이동
        //세션에 아이디와 이름
        session.setAttribute("logid", vo.getUserid());
        session.setAttribute("logName", vo.getUsername());
        session.setAttribute("logStatus","Y");

        response.sendRedirect(request.getContextPath()+"/");
    }else{// 로그인 실패 - 로그인폼
        response.sendRedirect(request.getContextPath()+"/member/login.jsp");

    }
%>




