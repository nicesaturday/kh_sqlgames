<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<%@ include file="/head.jsp" %>
	<title>Home</title>
	<style>
	  #section_serch {
	  	display: flex;
	  	width: 100%;
	  	height: 100px;
	  	position: sticky;
	  	justify-content: center;
	  }
	  #section_serch_box {
	    width: 100%;
	    max-width: 1500px;
	    height: 100%;
	    display: flex;
	    justify-content: space-between;
	  }
	  #section_serch_item1 {
	  	width: 700px;
	  	display: flex;
	  	justify-content:;
	  }
	  #section_serch_item1_inputBox {
	  	width: 200px;
	  	height: 100%;
	  	padding: 2em;
	  }
	  #section_serch_item1_inputBox_item {
	  	width: 100%;
	  	height: 40px;
	    background-color: #2C2C2C;
	    border-radius: 24px;
	  }
	  
	  #section_serch_item2 {
	  	width: 250px;
	  }
	  .section_serch_item1_textBox {
	  	padding: 2em;
	  	text-align: center;
	  	color: white;
	  }
	  
	</style>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="main_content">
  <div id="section_serch">
    <div id="section_serch_box">
      <div id="section_serch_item1">
      	<div id="section_serch_item1_inputBox">
      	  <div id="section_serch_item1_inputBox_item">
      	    
      	  </div>
      	</div>
      	<div class="section_serch_item1_box">
      	  <p class="section_serch_item1_textBox">HOME</p>
      	</div>
      	<div class="section_serch_item1_box">
      	  <p class="section_serch_item1_textBox">찾아보기</p>
      	</div>
      	<div class="section_serch_item1_box">
      	  <p class="section_serch_item1_textBox">콘솔</p>
      	</div>
      </div>
      <div id="section_serch_item2">
      	<div class="section_serch_item2_box"></div>
      	<div class="section_serch_item2_box"></div>
      </div>
    </div>
  </div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
