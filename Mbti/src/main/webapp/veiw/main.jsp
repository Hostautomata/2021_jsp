<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background-color: whitesmoke;
}
div{
		margin: auto;
	}
	input{
		padding:20px;
	}
	p{
		text-align: center;
	}
	
	
	.examin
		float: left;
	}
	.skip{
		float: right;
		width:40%;
		
	}
	.chk{
		clear: both;
		margin: auto;
		width: 100%;
	}
	form{
	}
	img{
		width:100%;
	}
	.box1{
		width:50%;
	}
	.box2{
		width:50%;
	}
	
</style>
</head>
<body>
	
	<%@ include file="top.jsp" %>
	<main>
		<div class="chk">
		<div class="box1"style="float: left">
			<form class="examin" action="" >
				<fieldset>
					<img alt="사진" src="../images/dog.jpg">
					<p>제 MBTI유형을 몰라요ㅠ</p>
					<p><input type="button" value="검사"></p>
				</fieldset>
			</form>
		</div>
		<div class = "box2" style="float:right;">	
			<form class="skip" action="" >
				<fieldset>
					<img alt="사진" src="../images/cat.jpg" >
					<p>제 MBTI유형을 알아요!</p>
					<p><input type="button" value="스킵"></p>
				</fieldset>
			</form>
		</div>
		</div>
	</main>
		
</body>
</html>