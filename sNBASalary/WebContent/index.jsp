<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="NBA.ico" />
<title>NBA球員查詢系統</title>
<style>
* {
	font-family: 微軟正黑體;
	color: white;
}

body {
	background: url(background.jpg) no-repeat fixed;
	background-size: cover;
}

.qoo {
	width: 450px;
	border-bottom: solid gray 1px;
	padding-bottom: 3px;
	margin: 30px;
}

.dd {
	width: max-width;
	height: max-width;
	margin: 20px;
	text-align: center;
}

.qq {
	width: 100px;
	float: left;
}

fieldset {
	width: 810px;
	border-radius: 800px;
	border: inset;
}

textarea {
	resize: none;
}

input {
	background: #3498db;
	background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
	background-image: -moz-linear-gradient(top, #3498db, #2980b9);
	background-image: -ms-linear-gradient(top, #3498db, #2980b9);
	background-image: -o-linear-gradient(top, #3498db, #2980b9);
	background-image: linear-gradient(to bottom, #3498db, #2980b9);
	-webkit-border-radius: 28;
	-moz-border-radius: 28;
	border-radius: 28px;
	font-family: Georgia;
	color: #ffffff;
	font-size: 34px;
	padding: 10px 20px 10px 20px;
	text-decoration: none;
}

input:hover {
	background: #3cb0fd;
	text-decoration: none;
}
</style>

</head>
<body>
	<form action="#" method="GET" enctype="multipart/form-data">
		<fieldset>
			<legend style="text-align: center; font-size: 50px">18-19賽季
				NBA球員查詢</legend>
			<div class="dd">
				<input type="button" value="新增球員" onclick='location.href="http://localhost:8080/sNBASalary/InsertFormNBASalary.jsp"'> 
				<input type="button" value="修改球員"  onclick='location.href="http://localhost:8080/sNBASalary/UpdateFormNBASalary.jsp"'>  
				<input type="button" value="刪除球員" onclick='location.href="http://localhost:8080/sNBASalary/DeleteFormNBASalary.jsp"'>  
				<input type="button" value="查詢球員" onclick='location.href="http://localhost:8080/sNBASalary/SearchFormNBASalary.jsp"'> 
			</div>


		</fieldset>


	</form>

</body>
</html>