<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>刪除球員成功</title>
<style>
* {
	font-family: 微軟正黑體;
	color: white;
}

body {
	background: url(sc.png) no-repeat fixed;
	background-size: cover;
}
body {
	background: url(7.png) no-repeat fixed;
	background-size: cover;
}

.qoo {
	width: 600px;
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
	float: center;
	font-size: 35px;
}

.qc {
	width: 100px;
	float: center;
	font-size: 40px;
	color: mediumorchid;
	font-weight: 900;
}

fieldset {
	width: 900px;
	border-radius: 80px;
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

select {
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	appearance: none;
	outline: 0;
	box-shadow: none;
	border: 0 !important;
	background: #2c3e50;
	background-image: none;
}
/* Remove IE arrow */
select::-ms-expand {
	display: none;
}
/* Custom Select */
.select {
	position: relative;
	display: flex;
	width: 20em;
	height: 3em;
	line-height: 3;
	background: #2c3e50;
	overflow: hidden;
	border-radius: .25em;
}

select {
	flex: 1;
	padding: 0 .5em;
	color: #fff;
	cursor: pointer;
}
/* Arrow */
.select::after {
	content: '\25BC';
	position: absolute;
	top: 0;
	right: 0;
	padding: 0 1em;
	background: #34495e;
	cursor: pointer;
	pointer-events: none;
	-webkit-transition: .25s all ease;
	-o-transition: .25s all ease;
	transition: .25s all ease;
}
/* Transition */
.select:hover::after {
	color: #f39c12;
}
.qz {
	width: 300px;
	float: center;
	font-size: 40px;
	color: white;
}
</style>
</head>

<body>
	<fieldset>
		<legend style="text-align: center; font-size: 50px">已將編號:${ memberBean.NO } 的資料成功刪除</legend>

		<div class="dd">
			<input type="button" value="繼續刪除"
				onclick='location.href="http://localhost:8080/sNBASalary/DeleteInsertFormNBASalary.jsp"'>
			<input type="button" value="新增球員 "
				onclick='location.href="http://localhost:8080/sNBASalary/InsertFormNBASalary.jsp"'>
			<input type="button" value="更新球員"
				onclick='location.href="http://localhost:8080/sNBASalary/UpdateFormNBASalary.jsp"'>
			<input type="button" value="查詢球員 "
				onclick='location.href="http://localhost:8080/sNBASalary/SearchFormNBASalary.jsp"'>
			<input type="button" value="回首頁"
				onclick='location.href="http://localhost:8080/sNBASalary/index.jsp"'>
		</div>
	</fieldset>
</body>
</html>