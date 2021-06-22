<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	p{
		text-align: center;
		font-weight: bold;
	}
	.top_main{
		width:100%;
	}
	.main_img{
		position: relative;
	}
	.main_text{
		position: absolute;
		top:40%;
		left:50%;
		transform: translate(-50%,-50%);
	}
	.title{
		font-size: 4em;
		color: white;
		font-weight: bold;
	}
	.menu{
		width: 20%;
		background-color: chocolate;
		float: left;
		width: 25%;
		color:white;
		border-left : 1px white solid;
        box-sizing:border-box;
	}
	.menubar{
		clear:both;
		width:100%;
		
	}
	.menubar>div:hover{
        background-color: darkorange;
        opacity: 0.5;
		
	}
	
	.sign{
		text-decoration: none;
		float: right;
		text-align: right;
		margin-right: 10px;
	}
	a{
		text-decoration: none;
	}
	
</style>
</head>
<body>
		<div class="top_main">
			<div class="main_img"><img src="../images/pet.jpg" style="width:100%;"></div>
			<div class="main_text"><p class="title">나는 뭐키우지?</p></div>
		</div>
		<p class="sign">
			<a class="login" href="">로그인</a> | 
			<a class="join" href="">회원가입</a>
		</p>
	<nav>
		<div class="menubar">
			<div class="menu"><p>검사하기</p></div>
			<div class="menu"><p>커뮤니티</p></div>
			<div class="menu"><p>관련사이트</p></div>
			<div class="menu"><p>게시판</p></div>
		</div>
	</nav>	
</body>
</html>