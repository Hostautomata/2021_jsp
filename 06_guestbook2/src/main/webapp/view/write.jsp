<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	text-align: center;
	margin: 0px 100px;
	auto;
}

th, td {
	text-align:left;
	padding: 10px 5px;
	border: 1px solid black;
	width: 500px;
	margin: auto;
}
th {background-color: skyblue;
	width: 30%
}

</style>
<script type="text/javascript">
function list_go(f) {
	f.action = "list.jsp";
	f.submit();
}
</script>
</head>
<body>
	<div>
		<h2>방명록:작성화면</h2>
		<hr>
		<div><p>[<a href="list.jsp">게시물목록으로</a>]</p></div>
		<form action="write_ok.jsp" method="post" enctype="multipart/form-data">
			
				<table>
					<tbody>
						
						<tr>
							<th>작성자</th><td><input type="text" name ="name" required="required"></td>
						</tr>
						<tr>
							<th>제목</th><td><input type="text" name ="subject" required="required"></td>
						</tr>
						<tr>
							<th>email</th><td><input type="text" name ="email"></td>
						</tr>
						<tr>
							<th>비밀번호</th><td><input type="password" name ="pw" required="required"></td>
						</tr>
						<tr>
							<th>첨부파일</th><td><input type="file" name ="f_name" ></td>
						</tr>
						
						<tr>
							<td colspan="2"><textarea rows="10" cols="50" name="main"></textarea></td>
						</tr>
						<tfoot>
							<tr><td colspan="2" style="text-align: center;">
							<input type="submit" value="저장">
							<input type="reset" value="취소">
							</tr>
						</tfoot>
					</tbody>
				</table>
			
		</form>
	</div>
</body>
</html>