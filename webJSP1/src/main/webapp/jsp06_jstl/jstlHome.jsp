<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
    <h1>JSTL(Jsp Standard Tag Library)사용하기</h1>
    <pre>
        변수선언, if, for, while, switch등의 jsp명령어를 태그로 만들어 가능한 방식
    </pre>
    <ol>
        <li><a href="setTag.jsp"> setTag : 변수선언,값대입, 변수삭제</a></li>
        <li><a href="ifTag.jsp?num=1234&name=세종대왕&age=17"> ifTag : 조건문(else문이 없다.)</a></li>
        <li><a href="chooseTag.jsp?name=gildong&age=27"> chooseTag : 조건문(다중if,switch)</a></li>
        <li><a href="forEachTag.jsp"> forEachTag : 반복문</a></li>
        <li><a href="urlTag.jsp"> url정보를 가지는 태그</a></li>
        <li><a href="redirectTag.jsp"> redirectTag:forward</a><br/>
            자동페이지 이동<br/>
            html : meta태그 meta http-equiv="refresh" content="10; html10_iframe.html"
            javascript : location.href = ""
            jsp : response.sendRedirect("")
        </li>
    </ol>
</div>