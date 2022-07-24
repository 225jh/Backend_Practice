<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- ���������� �� ���ǳ��� -->
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
	padding-bottom: 200px; /* footer�� ���� */
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
#product_Info {
	padding-top: 50px;
	margin-left: 28%;
}
#mypage_span{
font-size:30px;
font-weight:bold;
}
#mypage_table th:hover{
color:red;
}
#mypage_table th{
border:1px solid gray;
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
				<br> <span id="mypage_span">���������� </span>&nbsp;&nbsp;&nbsp; 
				<b>${sessionScope.loginUser.id}(${sessionScope.loginUser.name})</b>ȸ������ ���� ���������� �Դϴ�.
				<table id="mypage_table">
					<tr>
						<th><a href="ShopServlet?command=mypage_1&id=${sessionScope.loginUser.id}" class="a_tag2">���ų���</a></th>
						<th><a href="ShopServlet?command=mypage_3&id=${sessionScope.loginUser.id}" class="a_tag2">ȸ������</a></th>
						<th><a href="ShopServlet?command=mypage_5&id=${sessionScope.loginUser.id}" class="a_tag2">�� �����ı�</a></th>
						<th><a href="ShopServlet?command=mypage_6&id=${sessionScope.loginUser.id}" class="a_tag2">�� ���ǳ���</a></th>
					</tr>
				</table>
		<br><br><br><br><br><br>
		<hr style="width: 900px;">
		<p>�з�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(�����ͺ��̽�)</p>
		<hr style="width: 900px;">
		<p>����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(�����ͺ��̽�)</p>
		<hr style="width: 900px;">
		<p>����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(�����ͺ��̽�)</p>
		<hr style="width: 900px;">
		<p>���ǳ���&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(�����ͺ��̽�)</p>
		<hr style="width: 900px;">
		<p>�亯����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(�����ͺ��̽�)</p>
			</div>
			
			
	</div><!-- small -->
	<div id="footer">
		<jsp:include page="../include/footer.jsp"></jsp:include></div>
	</div><!-- big -->

</body>
</html>