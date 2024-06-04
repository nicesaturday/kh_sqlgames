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
    <form name="frm1" id="frm1" action="${path2 }/member/joinPro.do" method="post">
        <h1>SQL GAMES</h1>
        <div class="inset">
            <p>
                <label class="label" for="id">아이디</label>
                <input type="text" id="id" name="id">
                <button type="button" onclick="checkId()">중복검사</button>
                <input type="hidden" name="idck" id="idck" value="no"/>
            </p>
            <p>
                <label for="pw">비밀번호</label>
                <input type="password" id="pw" name="pw">
            </p>
            <p>
                <label for="pw">비밀번호 확인</label>
                <input type="password" id="pw2" name="pw2">
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
                <label for="tel">연락처</label>
                <input type="text" id="tel" name="tel">
            </p>
            <p>
                <label for="postcode">우편번호</label>
                <input type="text" id="postcode" name="postcode">
                <button type="button" onclick="searchpostcode()">주소 검색</button>
            </p>
            <p>
                <label for="addr1">주소</label>
                <input type="text" id="addr1" name="addr1">
            </p>
            <p>
                <label for="addr2">상세주소</label>
                <input type="text" id="addr2" name="addr2">
            </p>
            <p>
                <label for="birth">생년월일</label>
                <input type="date" id="birth" name="birth">
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
                
                <input type="hidden" id="tag1" name="tag1">
			    <input type="hidden" id="tag2" name="tag2">
			    <input type="hidden" id="tag3" name="tag3">
            </p>
        </div>
        <p class="p-container">
            <input type="submit" value="JOIN" onclick="setGenreTags()">
        </p>
    </form>
    <script>
        function checkId() {
        	if($("#id").val()==""){
                alert("아이디를 입력 해주세요.");
                $("#id").focus();
                return;
        	}
        	var params = { id : $("#id").val() }
        	$.ajax({
        		url: "${path2 }/member/idCheck.do?id="+$("#id").val(),
    			type: "get",
    			dataType: "json",
    			//data : "params",
    			success:function(result){
    				console.log(result.data);
                    var idChk = result.data;	//true 또는 false를 받음
                    if(!idChk){	//사용할 수 없는 아이디
                        $("#idck").val("no");
                        $("#msg").html("<strong style='color:red'>이미 사용중인 아이디가 있습니다.</strong>");
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
        
        function searchpostcode() {
            // 우편번호 검색 로직
            alert("우편번호 검색 기능은 구현되지 않았습니다.");
        }
        
        function getSelectTgas() {
            var selectTgas = [];
            var checkboxes = document.querySelectorAll('input[name="genre"]:checked');
            checkboxes.forEach(function(checkbox) {
            	selectTgas.push(checkbox.value);
            });
            return selectTgas;
        }
        
        function setGenreTags() {
            var selectTgas = getSelectTgas();
            document.getElementById('tag1').value = selectTgas[0] || ''; // 첫 번째 장르를 설정
            document.getElementById('tag2').value = selectTgas[1] || ''; // 두 번째 장르를 설정
            document.getElementById('tag3').value = selectTgas[2] || ''; // 세 번째 장르를 설정
        }
    </script>
</body>
</html>