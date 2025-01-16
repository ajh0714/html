<!--지시부-->
<%@ page language='java' contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>

<%!
   string name="홍길동";
   int age = 25;

   public String gugudan(int dan){
    String txt = "";
    for(int i=2; i<10; i++){
        txt += dan +"*"+ i + "=" + (dan*i)+"<br/>"
        }
        return txt;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
    <h1>인텔리제이에서 만든 홈페이지<h1>
    <h2>구구단<h2>
    <!-- 스크림트릿 ㅣ 변수선언,수식,출력-->
    <%
      String addr = "서울시 성동구 아차산로";
      int result = 10 * 4 / 2;

      //out 내장객체 : response, printwrite
      out.println("이름=" + name +"<br/>"; // "이름=홍길동<br/>"
    %>
 </div>
</body>
</html>