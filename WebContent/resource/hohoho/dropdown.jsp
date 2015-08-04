<%@ page language="java" contentType="text/html; charset=ISO-2022-KR"
	pageEncoding="ISO-2022-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>심플한 드롭다운 레이어 메뉴</title>
<script type="text/javascript">
	var TimeOut = 300;
	var currentLayer = null;
	var currentitem = null;

	var currentLayerNum = 0;
	var noClose = 0;
	var closeTimer = null;

	// Open Hidden Layer
	function mopen(n) {
		var l = document.getElementById("menu" + n);
		var mm = document.getElementById("mmenu" + n);

		if (l) {
			mcancelclosetime();
			l.style.visibility = 'visible';

			if (currentLayer && (currentLayerNum != n))
				currentLayer.style.visibility = 'hidden';

			currentLayer = l;
			currentitem = mm;
			currentLayerNum = n;
		} else if (currentLayer) {
			currentLayer.style.visibility = 'hidden';
			currentLayerNum = 0;
			currentitem = null;
			currentLayer = null;
		}
	}

	// Turn On Close Timer
	function mclosetime() {
		closeTimer = window.setTimeout(mclose, TimeOut);
	}

	// Cancel Close Timer
	function mcancelclosetime() {
		if (closeTimer) {
			window.clearTimeout(closeTimer);
			closeTimer = null;
		}
	}

	// Close Showed Layer
	function mclose() {
		if (currentLayer && noClose != 1) {
			currentLayer.style.visibility = 'hidden';
			currentLayerNum = 0;
			currentLayer = null;
			currentitem = null;
		} else {
			noClose = 0;
		}

		currentLayer = null;
		currentitem = null;
	}

	// Close Layer Then Click-out
	document.onclick = mclose;
</script>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

a.button { /* 기본버튼 */
	
	font-family: 'Jeju Gothic', serif;
	font-size: 8px;
    padding: 10px 10px 10px 10px; 
	background:#ffffff;
	color:#808080;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow:
		0px 1px 3px rgba(255,255,255,0.5),
		inset 0px 0px 1px rgba(161,95,161,1);
	-webkit-box-shadow:
		0px 1px 3px rgba(255,255,255,0.5),
		inset 0px 0px 1px rgba(161,95,161,1);
	box-shadow:
		0px 1px 3px rgba(255,255,255,0.5),
		inset 0px 0px 1px rgba(161,95,161,1);
}


#dd {
	margin: 0;
	padding: 0
}

#dd li {
	margin: 0;
	padding: 0;
	list-style: none;
	float: left;
	font: bold 11px arial;
}

#dd li a.menu {
	display: block;
	text-align: center;
	background: black;
	padding: 20px 10px;
	margin: 0 1px 0 0;
	color: #FFF;
	text-decoration: none;
}

#dd li a.menu:hover {
	background: #49A3FF
}

.submenu {  
	background:url("../images/dropdown-bg.png") no-repeat; 
	visibility: hidden;
	position: absolute;
	z-index: 3;
}

.submenu a {
	font-family:  'Jeju Gothic', serif;
	display: block;
	font: 11px arial;
	text-align: left;
	text-decoration: none;
	color: black;
}

.submenu a:hover {
	text-decoration:none;
	background: #49A3FF;
	color: #FFF;
}

#menu1 img {
	width: 60px;
	height: 40px;
}

table {
	margin-right: 0;

}

</style>
</head>
<body>


	<ul id="dd">
		<li><a href="#" class="menu" id="mmenu1" onmouseover="mopen(1);"
			onmouseout="mclosetime();">Home</a>
			<div class="submenu" id="menu1" onmouseover="mcancelclosetime()"
				onmouseout="mclosetime();">
				<table>
					<tr height="40">
					</tr>
					
					<tr height="30">
						<td width="10" ></td>
						<td rowspan="3" width="60" ><a href=""><img src="../images/dropdown-image.png" ></a></td>
						<td width="140">너굴쭌</td>
					
					<tr height="30">
						<td colspan="2"></td>
						
						<td><a href=" " class="button"><span>회원정보 수정</span></a> </td>
					</tr>
					
					<tr height="30">
						<td></td>
					
						<td><a href=" " 	class="button"><span>커플 맺기</span></a></td>
					</tr>
					</table>
				
						<ul>
						<li><a href=""><img src="../images/dropdown-btn1.png" ></a></li>
						<li><a href=""><img src="../images/dropdown-btn2.png"></a></li>
						<li><a href=""><img src="../images/dropdown-btn3.png" ></a></li>
						</ul>		
											
					
				
			</div></li>
	</ul>
</body>
</html>

					
					

		