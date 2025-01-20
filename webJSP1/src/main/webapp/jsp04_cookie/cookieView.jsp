<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
    <h1>jsp에서 쿠키값 구하기</h1>
    <ol>
        <%
            // 접속자인 클라이언트의 쿠키정보를 서버로 가져오기
           Cookie cookie[] = request.getCookies();

           for(int i=0; i<cookie.length; i++){
                String name = cookie[i].getName();
                String value = cookie[i].getValue();
                %>
                    <li><%=name%>=<%=value%></li>
                <%
           }
        %>
    </ol>
</div>