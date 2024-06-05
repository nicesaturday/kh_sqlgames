<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!-- 헤더 내용 기술 -->
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${path1}/resources/css/common.css">
<style>
#main_header {
    width: 100%;
    height: 80px;
    background-color: #161616;
    display: flex;
    align-items:center;
    justify-content: space-between;
    border-bottom: 2px solid #FDD24F;
    padding: 0 20px;
}
.navleft, .navright {
    display: flex;
    align-items: center;
    margin-left:80px;
    margin-right:50px;
}
.logo {
	display:flex;
    max-height: 75px;
    height: auto;
    width: auto;
}
.navbar-start, .navbar-end {
    display: flex;
    align-items: center;
    margin-left: 20px;
}
.navbar-item a {
    color: white;
    text-decoration: none;
    display: inline-block;
    font-size:14px;
    margin-right:30px;
}

#store {
	display:flex;
}
#store span, #store a {
	font-family: 'D2Coding', sans-serif;
	color: #FDD24F;
    font-size: 30px;
    text-decoration: none;
    display: block;
    margin-left:10px;
    margin-right: 10px;
}

</style>
</head>

    <nav class="navbar" id="main_header">
        <div class="navleft">
	        <div class="navbar-brand">
	            <a class="navbar-item" href="${path1 }" class="logo-wrap">
	                <img src="${path1}/resources/images/logo2transp.png" alt="LOGO" class="logo">
	            </a>
	        </div>
	        
			<div id="store">
				<span>|</span>
				<span><a href="${path1 }">STORE</a></span>
			</div>
			
	        <div class="navbar-start">
	            <div class="navbar-item">
	                <a href="${path1 }/qna/getQnaList.do">
	                    고객지원
	                </a>
				</div>
				<div class="navbar-item">
		            <a href="${path1 }/board/getBoardList.do">
		                공지사항
		            </a>
				</div>
	        </div>
        </div>
        
        <div class="navright">
	        <div class="navbar-end">
	            <div class="navbar-item">
	                <c:if test="${!empty sid}">
	                	<a href="${path1}/member/mypage.do">
	                        마이페이지
	                    </a>
	                    <a href="${path1}/member/logout.do">
	                        로그아웃
	                    </a>
	                </c:if>
	                <c:if test="${empty sid}">
	                    <a href="${path1}/member/login.do">
	                        로그인
	                    </a>
	                    <a href="${path1}/member/term.do">
	                        회원가입
	                    </a>
	                </c:if>
	                <c:if test="${sid.equals('admin')}">
	                    <a href="${path1}/admin/adminpage.do">
	                        관리자페이지
	                    </a>
	                    <a href="${path1}/member/logout.do">
	                        로그아웃
	                    </a>
	                </c:if>
	            </div>
	        </div>
        </div>
    </nav>


