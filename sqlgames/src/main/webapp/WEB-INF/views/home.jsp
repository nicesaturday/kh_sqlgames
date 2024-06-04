<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<html lang="ko">
<head>
<%@ include file="/head.jsp" %>
	<title>Home</title>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="main_content">
content
<a href="${path2}/member/login.do" class="button is-light">
    Log in
</a>
<a href="${path2}/member/term.do" class="button is-primary">
    <strong>Sign up</strong>
</a>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
