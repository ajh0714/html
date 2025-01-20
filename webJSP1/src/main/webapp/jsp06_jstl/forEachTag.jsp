<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList, com.ict.home.MemberVO, java.util.HashMap"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.StringTokenizer" %>
<div class="container">
    <h1>forEachTag : 반복문</h1>
    <h2>구구단 : 규칙적으로 변하는 데이터를 반복문으로 처리</h2>
    <c:set var="dan" value="7"></c:set>
    <ul>
        <!--
            var : 변수선언
            begin : 시작값
            end : 끝값
            step : 증가/감소값 (생략하면 1씩 증가한다.)
        -->
        <c:forEach var="i" begin="2" end="9" step="1">
            <li>  ${dan}  * ${i}  = ${dan*i}  </li>
        </c:forEach>
    </ul>

    <hr/>
    <h2>배열을 이용한 반복문 처리</h2>
    <%
        int data[]={56,43,78,20,60,30,14,32,39};
    %>
    <ol>
        <!--                     배열,list,map -->
        <c:forEach var="d" items="<%=data%>">
            <li>${d}</li>
        </c:forEach>
    </ol>

    <hr/>
    <h2>컬렉션(List)의 객체를 이용한 반복문 처리</h2>
    <%
        List<MemberVO> list = new ArrayList<MemberVO>();

        //회원정보를 list에 셋팅
        list.add(new MemberVO(1, "홍길동","010-1111-2222","서울시 성동구 성수동"));
        list.add(new MemberVO(2, "이순신","010-1111-3333","서울시 강남구 논현동"));
        list.add(new MemberVO(3, "안중근","010-1111-4444","서울시 중구 홍인동"));
        list.add(new MemberVO(4, "강감찬","010-1111-5555","서울시 영등포구 여의도동"));
        list.add(new MemberVO(5, "류승용","010-1111-6666","서울시 성북구 돈암동"));
    %>
 <style>
    .list>ul, .list>ul>li{
        margin:0; padding:0; list-style-type:none;
    }
    .list>ul{
        overflow:auto;
    }
    .list li{
        float:left; width:25%; line-height:40px; border-bottom:1px solid #ddd;
    }
 </style>
 <div class="list">
    <ul>
    <%
        for(int i=0; i<list.size(); i++){
            MemberVO vo = list.get(i);
            %>
                <li><%= vo.getNum()%></li>
                <li><%= vo.getUsername()%></li>
                <li><%= vo.getTel()%></li>
                <li><%= vo.getAddr()%></li>
            <%
        }
    %>
    </ul>
    <hr/>
    <ul>
        <c:forEach var="vo" items="<%=list%>">
            <li>${vo.num}></li>
            <li>${vo.username}</li>
            <li>${vo.tel}</li>
            <li>${vo.addr}</li>
        </c:forEach>
    </ul>
    </div>
    <hr/>
    <h1>HashMap을 이용한 반복처리하기</h1>
    <%
       HashMap<String, MemberVO> map = new HashMap<String, MemberVO>();

       map.put("AAA",new MemberVO(1, "홍길동","010-1111-2222","서울시 성동구 성수동"));
       map.put("BBB",new MemberVO(2, "이순신","010-1111-3333","서울시 강남구 논현동"));
       map.put("CCC",new MemberVO(3, "안중근","010-1111-4444","서울시 중구 홍인동"));

    %>
    <ul>
        <c:forEach var="vo" items="<%=map%>">
            <li> ${vo.key} </li>
            <li> ${vo.value.num} </li>
            <li> ${vo.value.username}</li>
            <li> ${vo.value.tel}</li>
            <li> ${vo.value.addr}</li>
        </c:forEach>
    </ul>
    <hr/>
    <h1>forTokens태그 : 문자열을 반복처리한다.</h1>
    <!--    StringTokenizer : 특정 구분기호로 문자열 조각
        빨강,파랑,노랑
        빨강 파랑 노랑
        빨강/파랑/노랑
        빨강-파랑-노랑
    -->
    <c:forTokens var="token" items="빨강,파랑,노랑.파랑,,초록/보라" delims=",./">
        [${token}]
    </c:forTokens>
    <ol>
    <%  // 오렌지 딸기 포도 파인애플 바나나
        String txt = "오렌지,딸기/포도-파인애플//바나나";

        StringTokenizer st = new StringTokenizer(txt,",/-");
        while(st.hasMoreTokens()){// 토큰이 있으면 true, 없으면 false
            %>
                <li><%= st.nextToken()%></li>
            <%
        }
    %>
    </ol>
 </div>