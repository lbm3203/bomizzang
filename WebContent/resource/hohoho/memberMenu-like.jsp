<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좋아요한 장소</title>
<!-- <link href="../css/reset.css" rel="stylesheet" type="text/css"> -->
<link href="../css/memberMenu.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="memberMenu-menu">
		<ul>
			<li><img src="../images/memberMenu-btn1.png"></li>
			<li><a href="http://localhost/dailydate/resource/hohoho/memberMenu-makeCourse.jsp"><img src="../images/memberMenu-btn2.png"></a></li>
			<li><a href="http://localhost/dailydate/resource/hohoho/memberMenu-scrap.jsp"><img src="../images/memberMenu-btn3.png"></a></li>
		</ul>
	</div>

	<div  id="likeCourse">
		<table>
			<thead>
				<tr>
					<td width="150">제목</td>
					<td width="150">테마</td>
					<td width="80">총 금액</td>
					<td width="70">조회수</td>
					<td width="70">좋아요</td>
					<td width="100">공유 여부</td>
					<td width="100">등록일</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>종로 카페 데이트</td>
					<td>카페, 로맨틱</td>
					<td>25,000</td>
					<td>20</td>
					<td>4</td>
					<td>O</td>
					<td>15-04-21</td>
				</tr>
				<tr>
					<td>이색 술집 데이트</td>
					<td>귀찮, 술집</td>
					<td>40,000</td>
					<td>12</td>
					<td>5</td>
					<td>X</td>
					<td>15-05-11</td>
				</tr>
				<tr>
					<td>건대, 만원 데이트</td>
					<td>학생, 주말, 꿀꿀</td>
					<td>35,000</td>
					<td>15</td>
					<td>3</td>
					<td>X</td>
					<td>15-05-18</td>
				</tr>
				<tr>
					<td>한강 데이트 코스</td>
					<td>주말, 공원</td>
					<td>55,000</td>
					<td>8</td>
					<td>2</td>
					<td>O</td>
					<td>15-06-06</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>