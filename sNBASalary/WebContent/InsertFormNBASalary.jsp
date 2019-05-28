<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-Hant-TW">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>新增球員</title>

<style>
* {
	font-family: 微軟正黑體;
	color: white;
}

body {
	background: url(2.png) no-repeat fixed;
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

select::-ms-expand {
	display: none;
}

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
	<form action="member.do" method="GET" enctype="multipart/form-data">
		<fieldset>
			<legend style="text-align: center; font-size: 50px">新增球員資料</legend>
			<div class="qoo">
				<label class="qq">姓名:</label> <input type="text" name="inNAME"
					autocomplete="off" autofocus placeholder="Stephen Curry">
			</div>
			<div class="qoo">
				<label class="qq">編號:</label> <input type="number" name="inNO"
					min="1" max="999999999" size="100">
			</div>
			<div class="qoo">
				<label class="qq">隊伍: <select class="qz" name="inTEAM">
						<option value="Atlanta Hawks">亞特蘭大老鷹</option>
						<option value="Boston Celtics">波士頓塞爾蒂克</option>
						<option value="Charlotte Bobcats">夏洛特山貓</option>
						<option value="Chicago Bulls">芝加哥公牛</option>
						<option value="Cleveland Cavaliers" selected>克里夫蘭騎士</option>
						<option value="Denver Nuggets" selected>丹佛金塊</option>
						<option value="Dallas Mavericks" selected>達拉斯小牛</option>
						<option value="Detroit Pistons" selected>底特律活塞</option>
						<option value="Golden State Warriors" selected>金州勇士</option>
						<option value="Houston Rockets" selected>休士頓火箭</option>
						<option value="Indiana Pacers" selected>印地安那溜馬</option>
						<option value="Los Angeles Clippers" selected>洛杉磯快艇</option>
						<option value="Los Angeles Lakers" selected>洛杉磯湖人</option>
						<option value="Memphis Grizzlies" selected>孟斐斯灰熊</option>
						<option value="Minnesota Timberwolves" selected>明尼蘇達灰狼</option>
						<option value="Milwaukee Bucks" selected>密爾瓦基公鹿</option>
						<option value="Miami Heat" selected>邁阿密熱火</option>
						<option value="New Orleans Hornets" selected>新澤西籃網</option>
						<option value="New Jersey Nets" selected>紐奧良黃蜂</option>
						<option value="Orlando Magic" selected>紐奧良黃蜂</option>
						<option value="New Orleans Hornets" selected>奧蘭多魔術</option>
						<option value="New York Knicks" selected>紐約尼克</option>
						<option value="Portland Trail Blazers" selected>波特蘭拓荒者</option>
						<option value="Phoenix Suns" selected>鳳凰城太陽</option>
						<option value="New Orleans Hornets" selected>鳳凰城太陽</option>
						<option value="Philadelphia 76ers" selected>費城76人</option>
						<option value="San Antonio Spurs" selected>聖安東尼奧馬刺</option>
						<option value="New Orleans Hornets" selected>紐奧良黃蜂</option>
						<option value="Seattle SuperSonics" selected>西雅圖超音速</option>
						<option value="Sacramento Kings" selected>紐奧良黃蜂</option>
						<option value="New Orleans Hornets" selected>沙加緬度國王</option>
						<option value="Toronto Raptors" selected>多倫多暴龍</option>
						<option value="Utah Jazz" selected>猶他爵士</option>
						<option value="Washington Wizards" selected>華盛頓巫師</option>
				</select>
				</label>
			</div>

			<div class="qoo">
				<label class="qq">位置:</label> <label class="qc"> <input
					type="radio" name="inPOS" value="PG">PG
				</label> <label class="qc"> <input type="radio" name="inPOS"
					value="SG">SG
				</label> <label class="qc"> <input type="radio" name="inPOS"
					value="SF">SF
				</label> <label class="qc"> <input type="radio" name="inPOS"
					value="PF">PF
				</label> <label class="qc"> <input type="radio" name="inPOS"
					value="C">C
				</label>
			</div>

			<div class="qoo">
				<label class="qq">薪資(USD):</label> <input type="number"
					name="insalary" min="1" max="999999999" size="100">
			</div>
			<div class="qoo">
				<label class="qq">賽季:</label> <input type="text" name="inseason"
					size="30px">
			</div>
			<div class="dd">
				<input type="submit" name="update" value="新增"> <input
					type="reset" value="清除"> <input type="button" value="回首頁"
					onclick='location.href="http://localhost:8080/sNBASalary/index.jsp"'>
			</div>
		</fieldset>


	</form>

</body>

</html>