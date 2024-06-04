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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${path2}/resources/css/join.css">
<title>Join</title>
</head>
<body>
	<div class="background-wrap">
        <div class="background"></div>
    </div>
    <form action="${path2 }/member/joinPro.do" method="post" onsubmit="return joinCheck(this)">
        <h1>SQL GAMES</h1>
        <div class="inset">
            <p>
                <label class="label" for="user-id">아이디</label>
                <input type="text" id="user-id" name="user-id">
                <button type="button" onclick="checkId()">중복검사</button>
            </p>
            <p>
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password">
            </p>
            <p>
                <label for="password">비밀번호 확인</label>
                <input type="password" id="password" name="password">
            </p>
            <p>
                <label for="name">이름</label>
                <input type="text" id="name" name="name">
            </p>
            <p>
                <label for="email">이메일</label>
                <input type="text" id="email" name="email">
            </p>
            <p>
                <label for="phone">연락처</label>
                <input type="text" id="phone" name="phone">
            </p>
            <p>
                <label for="zipcode">우편번호</label>
                <input type="text" id="zipcode" name="zipcode">
                <button type="button" onclick="searchZipcode()">주소 검색</button>
            </p>
            <p>
                <label for="address">주소</label>
                <input type="text" id="address" name="address">
            </p>
            <p>
                <label for="detail-address">상세주소</label>
                <input type="text" id="detail-address" name="detail-address">
            </p>
            <p>
                <label for="birthdate">생년월일</label>
                <input type="date" id="birthdate" name="birthdate">
            </p>
            <p style="font-size: 15px; font-weight: 600;">관심 게임 장르</p>
            <p>
                <label><input type="checkbox" name="genre" value="RPG"> RPG</label>
                <label><input type="checkbox" name="genre" value="FPS"> FPS</label>
                <label><input type="checkbox" name="genre" value="MOBA"> MOBA</label>
                <label><input type="checkbox" name="genre" value="RTS"> RTS</label>
                <label><input type="checkbox" name="genre" value="Sports"> Sports</label><BR>
                <label><input type="checkbox" name="genre" value="Action"> Action</label>
                <label><input type="checkbox" name="genre" value="Adventure"> Adventure</label>
                <label><input type="checkbox" name="genre" value="Puzzle"> Puzzle</label>
                <label><input type="checkbox" name="genre" value="Simulation"> Simulation</label>
                <label><input type="checkbox" name="genre" value="Strategy"> Strategy</label>
            </p>
        </div>
        <p class="p-container">
            <input type="submit" value="JOIN">
        </p>
    </form>
    <script>
        function checkId() {
        	if($("#user-id").val()==""){
                alert("아이디를 입력 해주세요.");
                $("#user-id").focus();
                return;
        	}
        	var params = { id : $("#user-id").val() }
        	$.ajax({
        		url: "${path2 }/member/idCheck.do?id="+$("#user-id").val(),
    			type: "post",
    			dataType: "json",
    			data : "params",
    			success:function(result){
    				console.log(result.data);
                    var idChk = result.data;	//true 또는 false를 받음
                    if(idChk == false){	//사용할 수 없는 아이디
                        $("#idck").val("no");
                        $("#msg").html("<strong style='color:red'>기존에 사용되고 있는 아이디 입니다. 다시 입력하시기 바랍니다.</strong>");
                        $("#id").focus();
                    } else if(idChk){	//사용 가능한 아이디
                        $("#idck").val("yes");
                        $("#msg").html("<strong style='color:blue'>사용가능한 아이디 입니다.</strong>");
                    } else if(idck==""){
                        $("#msg").html("<strong>아이디가 확인되지 않았습니다. 다시 시도해주시기 바랍니다.</strong>");
                    }
    			}
        	});
        }
        
        function searchZipcode() {
            // 우편번호 검색 로직
            alert("우편번호 검색 기능은 구현되지 않았습니다.");
        }
    </script>
</body>
</html>