<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="../css/reset.css" rel="stylesheet" type="text/css">
<link href="../css/joinMem.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
	var id = $('#name').val(); //닉네임
	function clearText(field)
	 {
	   if(field.defaultValue==field.value)
	    field.value="";
	 }

	//onfocus : 탭키 또는 마우스 등을 이용해 커서가 그 안에 들어온경우, onblur : 커서가 그 개체를 벗어난 경우

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
	<header id="login-header">

		<section>
			<img src="../images/member-memberLogin.png">

			<form id="login">
				<fieldset>
					<table>
						<tr height="20">
						</tr>
						<tr height="60">
							<td width="350"><input name="name" type="text" maxlength="20" value="아이디를 입력하세요." onFocus="clearText(this)"/></td>
						</tr>
						<tr height="60">
							<td><input type="text" id="pwd" value="비밀번호를 입력하세요"
								style="width: 200x;" onfocus="changeType(this);"
								onblur="changeType(this);" /></td>
		
						<tr height="100">
						<td><a href=" " class="button login-button"><span>로그인</span></a>
						</td>
						</tr>
					</table>
				</fieldset>
			</form>
			<fieldset>
				<form id="login">
					<div class="text">


						<a href=" " class="text"><font size="3"> > 회원가입</font></a> <a
							href=" " class="text"><font size="3"> > 비밀번호 찾기</font></a>

					</div>
				</form>
			</fieldset>
		</section>
	</header>
</body>
</html>