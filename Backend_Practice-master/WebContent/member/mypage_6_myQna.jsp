<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

#big {
	min-height: 100%;
	position: relative;
}

#small {
	padding-bottom: 200px; /* footer의 높이 */
}
#mypage_div{
position:absolute;
left:600px;
border:1px solid black;
width:900px;
height:80px;
text-align:left;
}
#mypage_span {
	font-size: 30px;
	font-weight: bold;
}
#mypage_table{
position:absolute;
top:73px;
border-collapse:collapse;
border:1px solid gray;
color:gray;
margin-top:10px;
}
#mypage_table th:hover{
color:red;
}
#mypage_table th{
border:1px solid gray;
}
#span{
font-size: 25px;
}
#product_Info {
	padding-top: 30px;
	margin-left: 600px;
}
#btn {
	margin-left: 600px;
	height: 50px;
	width: 200px;
	border: 0;
}
#question_table1{
width:800px;
height:50px;
}
#question_table2{
width:700px;
height:50px;
}
.a_tag2{
text-decoration:none;
color:black;
}
.a_tag2:hover{
background:black;
color:white;
}
</style>
</head>
<body>
<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../include/header_notlogin.jsp"></jsp:include>
			</div><!-- header -->

		<hr size="2" style="color: lightgray">
			<div id="mypage_div">
				<br>
				<span id="mypage_span">마이페이지 </span>&nbsp;&nbsp;&nbsp; 
				<b>${sessionScope.loginUser.id}(${sessionScope.loginUser.name})</b>회원님을 위한 마이페이지 입니다.
				<table id="mypage_table">
					<tr>
				<th><a href="ShopServlet?command=mypage_1&id=${sessionScope.loginUser.id}" class="a_tag2">구매내역</a></th>
				<th><a href="ShopServlet?command=mypage_3&id=${sessionScope.loginUser.id}" class="a_tag2">회원정보</a></th>
				<th><a href="ShopServlet?command=mypage_5&id=${sessionScope.loginUser.id}" class="a_tag2">내 구매후기</a></th>
				<th><a href="ShopServlet?command=mypage_6&id=${sessionScope.loginUser.id}" class="a_tag2">내 문의내역</a></th>
				</table>
			</div>
			<br><br><br><br><br>
			<div id="product_Info">
			<span id="span">문의내역&nbsp;&nbsp;&nbsp; </span>
				<input type='button' class='btn' name='btn' value='자주하는질문'> 
				<input type='button' class='btn' name='btn' value='1:1문의하기'>
			<br><br>
			<table id="question_table1">
		<tr style="background:lightblue">
			<th colspan="2">일자</th>
			<th colspan="2">제목</th>
			<th colspan="2">상태</th>
		</tr>
		<tr>	
			<th colspan="2">1</th>
			<th colspan="2">2</th>
			<th colspan="2">3</th>
			</tr>
		</table>
		<br><br>
				<table id="question_table2">
		<tr style="background:lightblue">
			<th colspan="2">일자</th>
			<th colspan="2">제목</th>
			<th colspan="2">답변일자</th>
		</tr>
		<tr>	
			<th colspan="2">1</th>
			<th colspan="2">2</th>
			<th colspan="2">3</th>
			</tr>
		</table>
			</div>
</div><!-- small -->
<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include></div>
</div><!-- big -->
</body>
</html>