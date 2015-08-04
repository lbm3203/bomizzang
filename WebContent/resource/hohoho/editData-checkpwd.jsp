<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 - 비밀번호 확인</title>
<link href="../css/reset.css" rel="stylesheet" type="text/css">
<link href="../css/joinMem.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function changeType(obj) {	//비밀번호
	//defaultValue 란 속성은 개체에 이미 기본으로 값을 넣어놨을때 그 값을 가리킨다.
	if (obj.value == obj.defaultValue) {
		obj.value = "";
		obj.type = "Password"; //input type을 password 로 변경
	} else {
		if (obj.value.split(" ").join("") == "") //space 까지 확인하여 공백인지를 확인
		{
			obj.value = obj.defaultValue;
			obj.type = "text";//input type을 text 로 변경
		} else {
			return;
		}
	}
}
</script>
</head>
<body>
	<header id="forgetPwd-header">

		<section>
					<img src="../images/member-editData.png"> <font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - PASSWORD CHECK</font>
			<br />

			<form id="forgetPwd">
				<fieldset>
					<table>
						<tr height="60">
						
							<td width="350">너굴쭌</td>
						</tr>

						<tr height="60">
						
							<td><input type="text" id="pwd" value="비밀번호를 입력하세요"
								style="width: 200x;" onfocus="changeType(this);"
								onblur="changeType(this);" /></td>
						</tr>
						<tr height="100">
						<td>
						<a href=" " class="button forgetPwd-button2"><span>확인</span></a></td>
						</tr>
					</table>
				</fieldset>
			</form>

		</section>
	</header>
</body>
</html>