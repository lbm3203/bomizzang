<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="../css/reset.css" rel="stylesheet" type="text/css">
<link href="../css/joinMem.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
	var InputImage = (function loadImageFile() {
		if (window.FileReader) {
			var ImagePre;
			var ImgReader = new window.FileReader();
			var fileType = /^(?:image\/bmp|image\/gif|image\/jpeg|image\/png|image\/x\-xwindowdump|image\/x\-portable\-bitmap)$/i;

			ImgReader.onload = function(Event) {
				if (!ImagePre) {
					var newPreview = document.getElementById("imagePreview");
					ImagePre = new Image();
					ImagePre.style.width = "200px";
					ImagePre.style.height = "200px";
					newPreview.appendChild(ImagePre);
				}
				ImagePre.src = Event.target.result;

			};

			return function() {

				var img = document.getElementById("image").files;

				if (!fileType.test(img[0].type)) {
					alert("이미지 파일을 업로드 하세요");
					return;
				}

				ImgReader.readAsDataURL(img[0]);
			}

		}

		document.getElementById("imagePreview").src = document
				.getElementById("image").value;

	})();
	</script>

<!-- 	아이디 중복확인 -->
<script>
function checkId()
{
var sid= document.writeForm.id.value  /*  아이디값 가져오기 */
if(sid="") alert("입력된 아이디가 없습니다.")	/* 없는 경우 메세지 출력 */
else window.open("checkId.jsp?id="+sid,"","width=400 height=150")
</script>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
	<!--  joinMem이랑 양식이 똑같다 쓰겠다 -->
	<header id="joinMem-header">

		<section>
			<img src="../images/member-editData.png">
			<br />

			<form id="joinMem">
				<fieldset>
	<table>
						<thead>
							<tr>
								<td><font size="3" color="#58E2B9">필수항목</font></td>
							</tr>
						</thead>
						<tr>
							<td width="120">닉네임</td>
							<td width="400">안세림바보</td>
						</tr>

						<tr>

							<td>이메일</td>
							<td><input type="text" name="email" size="10"></input> @ <select
								name="email2">
									<option value=' '>선택</option>
									<option value="naver.com">naver.com</option>
									<option value="nate.com">nate.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
							</select></td>
							<td><font size="1">* 이메일은 비밀번호를 찾을 때 사용됩니다.</font></td>
						</tr>


						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="pwd"></td>
							<td><font size="1">* 영문 대소문자/숫자를 혼용하여 6~16글자</font></td>
						</tr>

						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" name="checkpwd"></td>
						</tr>

						<tr>
							<td>성별</td>
							<td><input type="radio" name="gender" value="1" />남
								<hr> <input type="radio" name="gender" value="2" />여</td>
						</tr>


						<tr>
							<td>연령대</td>
							<td><input type="radio" name="age" value="1" />10대 <input
								type="radio" name="age" value="2" />20대 <input type="radio"
								name="age" value="3" /> 30대</td>
						</tr>

					</table>
					<table>
						<thead>
								<tr>
								<td><font size="3" color="#58E2B9">선택항목</font></td>
								<td><font size="2">미리보기</font></td>
							</tr>
						</thead>
						<tr>
							<td width="120">사진</td>
							<td width="300">
								<div id="imagePreview"></div> <br> 
								<input id="image" type="file" onchange="InputImage();"> 
								<input type="reset" name="삭제" value="삭제"></td>
							<td width="300"></td>

						</tr>
					</table>
				</fieldset>
			</form>
				<form id="editData">
					<a href=" " class="button join-button"><span>수정</span></a> 
					<a href=" " 	class="button cancleJoin-button"><span>취소</span></a>

				</form>

		</section>
	</header>
</body>
</html>