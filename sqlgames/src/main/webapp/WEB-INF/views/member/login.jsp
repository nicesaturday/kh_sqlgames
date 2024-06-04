<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path2}/resources/css/login.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${path2}/resources/js/login.js"></script>
<title>Login</title>
</head>
<body>
	<div class="tab_content">
      <button class="pop_clo"><svg xmlns="http://www.w3.org/2000/svg" height="12px" viewBox="0 -960 960 960" width="12px" fill="#EA3323"><path d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"/></svg></button>
        <p class="pop_op" style="text-align: center;
                cursor: pointer;
                font-size: 50px;
                font-weight: 600;
                margin-top: 20px;
                margin-bottom: 35px;
                color: black;"
        >ID / PW 찾기</p>
        
        <input type="radio" name="idpw" id="tab1" checked>
        <label class="rala1" for="tab1">아이디</label>
        <input type="radio" name="idpw" id="tab2">
        <label class="rala2" for="tab2">비밀번호</label>

        <div class="conbox con1">
          <form action="">
            <label for="idf">이름 </label>
            <input type="text" name="idf" id="idf1" required><br>
            <label for="idf">주민번호 </label>
            <input type="text" name="idf" id="idf2" required>
            <button type="submit" id="fnext">NEXT</button>
          </form>
        </div>
        <div class="conbox con2">
          <form action="">
            <label for="idf">이름 </label>
            <input type="text" name="idf" id="pwf1" required><br>
            <label for="idf">아이디 </label>
            <input type="text" name="idf" id="pwf2" required>
            <label for="idf">주민번호 </label>
            <input type="text" name="idf" id="pwf3" required>
            <button type="submit" id="fnext1">NEXT</button>
          </form> 
        </div>
    </div>
    
      <div class="background-wrap">
        <div class="background"></div>
      </div>
      
      <form id="accesspanel" name="loginForm" action="${path2 }/member/loginPro.do" method="post">
        <h1 id="litheader">SQL GAMES</h1>
        <div class="inset">
          <p>
            <input type="text" name="id" id="id" placeholder="ID를 입력 해주세요.">
          </p>
          <p>
            <input type="password" name="pw" id="pw" placeholder="PW를 입력 해주세요.">
          </p>
        <div class="infofound">
            <p><a href="">ID 찾기 / PW 찾기</a></p>
        </div>
          <input class="loginLoginValue" type="hidden" name="service" value="login" />
        </div>
        <p class="p-container">
          <input type="submit" name="Login" id="go" value="Login">
        </p>
      </form>
      <c:if test="${not empty msg}">
	    <script>alert('${msg}');</script>
	  </c:if>
</body>
</html>