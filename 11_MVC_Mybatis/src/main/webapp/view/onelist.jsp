
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	function update_go(f) {
		f.action="${pageContext.request.contextPath }/MyController?cmd=update";
		f.submit();
	}
	function delete_go(f) {
		f.action="${pageContext.request.contextPath }/MyController?cmd=del";
		f.submit();
		
	}
</script>
</head>
<body>
	<div>
	<h2>방명록:내용화면</h2>
		<hr>
		<div><p>[<a href="${pageContext.request.contextPath }/MyController?cmd=list">게시물목록으로</a>]</p></div>
		<form  method="post">
				<table>
					<tbody>
						<tr><th style="width:40%">IDX</th><td>${vo.idx}</td></tr>
						<tr><th >작성자</th><td>${vo.name}</td></tr>
						<tr><th>제목</th><td>${vo.subject}</td></tr>
						<tr><th>email</th><td>${vo.email}</td></tr>
						<tr ><td colspan="2"><pre>${vo.main}</pre></td></tr>
						
					</tbody>
						<tfoot>
							<tr>
								<td colspan="2" style="text-align: center;">
									<input type="button" value="수정" onclick="update_go(this.form)">
									<input type="button" value="삭제" onclick="delete_go(this.form)">
									 <input type="hidden" name="idx" value="${vo.idx }">     
						    		<input type="hidden" name="pw" value="${vo.pw }"> 
								</td>
							</tr>
						</tfoot>
				</table>
		</form>
	</div>
</body>
</html>