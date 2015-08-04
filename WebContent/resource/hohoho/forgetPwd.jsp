<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="../css/reset.css" rel="stylesheet" type="text/css">
<link href="../css/joinMem.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<script type="text/javascript">
	var id = $('#name').val(); //닉네임
	function clearText(field) {
		if (field.defaultValue == field.value)
			field.value = "";
	}

	//onfocus : 탭키 또는 마우스 등을 이용해 커서가 그 안에 들어온경우, onblur : 커서가 그 개체를 벗어난 경우

	function changeType(obj) { //비밀번호
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
			<img src="../images/member-forgetPwd.png"><font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				- PASSWORD CHECK</font> <br />

			<form id="forgetPwd">
				<fieldset>
					<table>
						<tr height="20">
						</tr>
						<tr height="60">
							<td width="300"><input name="name" type="text"
								maxlength="20" value="아이디를 입력하세요." onFocus="clearText(this)" /></td>
						</tr>
						<tr height="60">
							<td width="400"><input name="name" type="text" id="email"
								maxlength="20" value="이메일 주소를 입력하세요." onFocus="clearText(this)" />
								@ <select name="email2">
									<option value=' '>선택</option>
									<option value="naver.com">naver.com</option>
									<option value="nate.com">nate.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
							</select></td>
						</tr>
						<tr height="100">
							<td><a href=" " class="button forgetPwd-button2"><span>비밀번호 찾기</span></a>
							</td>
						</tr>
					</table>
				</fieldset>
			</form>
			<fieldset></fieldset>
		</section>
	</header>
</body>
</html>