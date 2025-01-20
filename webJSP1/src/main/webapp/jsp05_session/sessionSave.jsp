<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
    <h1>세션저장하기</h1>
    <%
        //서버에 세션정보 저장위치에 값기록하기
        // request, reponse, session, application, out->out.println()

        //                  변수,값
        session.setAttribute("userid","goguma");
        session.setAttribute("username","고구마");
        session.setAttribute("visited","25");

        session.setAttribute("logStatus","Y");
    %>

    <a href="sessionView.jsp">세션정보 확인하러가기</a><br/>
    <a href="sessionRemove.jsp">세션의 변수 지우기</a>
    <a href="sessionInvalidate.jsp">세션객체지우기 : 세션이 없어지고, 모든 세션변수도 제거된다.</a>

</div>