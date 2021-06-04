<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp설명</title>
</head>
<body>
	<!-- html주석 : 소스보기에서 보인다. -->
	<%-- jsp주석 : 소스보기로 봐도 안보인다.--%>
	<%--
		jsp : java server page(= html안에서 java코드 사용가능하게 만든 스크립트언어)
		jsp 구성
			-1.지시어 (디렉티브) : <%@ 지시어 %>
	 		<%@ 지시어 %>, <%@ taglib %>, <%@ include %>
	 			페이지 지시어 : 보통 해당 문서의맨 앞에 나온다.
	 			현재 jsp페이지에 대한 정보를 공유
	 			톰캣이 해당 page지시어를 보고 해당 페이지를 어떻게 해석하고 실행할지 판단
	 			이클립스는 자동으로 만들어준다.(필요없으면 고치지 않는다.)
	 			 -언어 : 스크립트 코드에 사용되는 언어
	 			 -contextType : 해당 페이지의 문서 타입과 문자셋 지정(캐릭터 인코딩)
	 			 -encoding(암호화) : 정보의 형태를 변환해서 처리
	 			 -decoding(복호화) : 원하는 정보를 원래 형태로 되돌리는 것
	 			 
	 			 -pageEncoding : 해당페이지를 UTF-8형태로 변환하여 처리
	 			 -session : 세션(저장공간) 사용여부 (기본 : true)
	 			 -buffer : 출력에 사용되는 임시저장 공간(기본 : 8kd)
	 			 -autoFlush : 출력버퍼가 다 차지 않아도 바로바로 출력시켜줌(기본 : true)
	 			 
	 			 -errorPage: 해당 페이지가 오류를 발생했을 때 처리하는 오류 페이지 지정
	 			 -isErrorPage : 해당페이지가 오류페이지 이면 true 아니면 flase(기본 : true)
	 			
	 			taglib지시어 : 해당 페이지에서 사용할 태그 라이브러리 지정
	 						나중에 JSTL사용할때 필요
	 			
	 			include지시어 : <%@ include file ="다른 문서 위치 및 이름"%>
	 							현재 페이지에서 특정 영역에 다른 문서를 포함시킬 때 사용
	 							**html iframe과 비슷함.
	 							
	 				**include는 지시어를 사용하는 방법과 액션테그를 사용하는 방법 두가지가 있다.			
	 			 
	 			 
	 			 
	 			 
	 		
	 		
	 		
	 		
	 --%>
	
</body>
</html>