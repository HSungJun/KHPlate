<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Mypage</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
* {
	box-sizing: border-box;
}

button {
	border-radius: 15px;
	border: 1px solid #4dae3c;
	background-color: white;
	color: #4dae3c;
	font-size: 12px;
	height: 30px;
}

button:hover {
	color: white;
	background-color: #4dae3c;
}

.mypage {
	margin: auto;
	margin-top: 20px;
}

.header {
	height: 5%;
	width: 100%;
	text-align: center;
	line-height: 60px;
	font-size: 14px;
	background-color: #ED1C16;
	color: white;
	font-width: bold;
	border-radius: 30px;
	box-shadow: 1px 1px 5px 1px silver;
	text-align: center;
}

.body1 {
	height: 60%;
}

.body1>div {
	float: left;
	height: 100%;
}

.profile {
	width: 35%;
}

.inpomation {
	width: 65%;
}

.inpomation>div {
	float: left;
	height: 100%;
}

.inpocontents1 {
	width: 20%;
}

.inpocontents1>ul {
	list-style: none;
	margin-top: 50px;
	padding: 0px;
	padding-left: 40px;
}

.inpocontents1>ul>li {
	margin-bottom: 0px;
	font-size: 14px;
	line-height: 20px;
	width: 100px;
}

.inpocontents2 {
	width: 80%;
	padding-top: 45px;
	padding-left: 200px;
	position: relative;
}

.inpocontents2>input {
	margin-bottom: 22px;
	width: 100%;
}

.inputPw2 {
	margin-top: 5px;
}

.inputPw2>input {
	width: 54%
}

#pwConfirm {
	margin-left: 10px;
	display: inline-block;
}

.inpocontents2>button {
	width: 75px;
}

.profileImage {
	height: 65%;
	margin-top: 50px;
	margin-left: 50px;
}

.profileImage>button {
	margin-top: 50px;
	font-size: 12px;
	width: 75px;
	text-align: center;
	margin-left: 90px;
}

.proImage {
	width: 250px;
	height: 250px;
	border-radius: 200px;
	border: 1px solid black;
}

.profileName {
	height: 35%;
	text-align: center;
}

.profileName>button {
	margin-top: 50px;
	font-size: 12px;
	width: 75px;
}

button:hover {
	opacity: 70%;
}

#postSearch {
	position: relative;
	left: 15px;
	top: 0px;
	display: none;
}

#modiComBtn {
	display: none;
}

.body2 {
	height: 40%;
}

.body2Navi {
	height: 7%;
}

.body2Navi>a {
	height: 100%;
	background-color: white;
	border: 1px solid black;
	color: black;
	position: relative;
	top: 5px;
	font-size: 12px;
	height: 30px;
	display: inline-block;
	width: 80px;
	text-align: center;
	line-height: 30px;
	text-decoration: none;
	background-color: rgb(240, 240, 240);
}

.body2Navi>a:first-of-type {
	border-bottom: none;
}

.body2Contents {
	width: 100%;
	height: 200px;
	border: 1px solid black;
	box-shadow: 1px 1px 5px 1px silver;
	background-color: rgb(240, 240, 240);
	border: 1px solid black;
}
</style>
</head>
<body>
	<div class="mypage">
		<div class="header">����������</div>
		<div class="body1">
			<div class="profile">
				<div class="profileImage">
					<div class="proImage"></div>

					<button>�����ϱ�</button>
				</div>
			</div>
			<div class="inpomation">
				<div class="inpocontents1">
					<ul>
						<li>���̵�</li>
						<li>��й�ȣ</li>
						<li>��й�ȣ Ȯ��</li>
						<li>�̸�</li>
						<li>�г���</li>
						<li>�ڵ�����ȣ</li>
						<li>email</li>
						<li>Ŭ������</li>
						<li>���ټҰ�</li>
						<li>�־�����</li>
					</ul>
				</div>
				<form action="/update.members" method="post" id="updateForm">
					<div class="inpocontents2">
						<input type="text" value="${my.userID}" readonly><br>
						<input type="password" value="${my.pw}" id="pw1" name="pw"
							readonly><br> <input type="password" id="pw2"
							readonly id="pwConfirm"><br> <input type="text"
							value="${my.name}" readonly><br> <input type="text"
							value="${my.nickname}" id="nickname" name="nickname" readonly><br>
						<input type="text" value="${my.phone}" id="phone" name="phone"
							readonly><br> <input type="text" value="${my.email}"
							id="email" name="email" readonly><br> <input
							type="text" value="${my.classes}" readonly><br> <input
							type="text" value="${my.selfcomment}" id="selfcomment"
							name="selfcomment" readonly><br> <input type="text"
							value="${my.favoriteFood}" id="favoriteFood" name="favoriteFood"
							readonly><br>
						<button id="modiBtn" type="button">�����ϱ�</button>
						<button id="modiComBtn" type="submit">�����Ϸ�</button>
					</div>
				</form>
			</div>
		</div>
		<div class="body2">
			<div class="body2Navi">
				<a href="#" class="myContents">���� �� ��</a> <a href="#"
					class="myContents">���� �� ���</a> <a href="#" class="myContents">���ã��</a>
				<a href="#" class="myContents">1:1 ����</a>
			</div>
			<div class="body2Contents"></div>
		</div>
	</div>
	<script>
		$("#postSearch").on("click", function() { // �ּ� API

			new daum.Postcode({
				oncomplete : function(data) {
					let roadAddr = data.roadAddress;
					document.getElementById('zipCode').value = data.zonecode;
					document.getElementById("address1").value = roadAddr;
				}
			}).open();
		})

		$("document")
				.ready(
						function() {
							$("#modiBtn")
									.on(
											"click",
											function() { //�����ϱ�

												$("#postSearch").css("display",
														"inline-block");
												$("#modiBtn").css("display",
														"none");
												$("#modiComBtn").css("display",
														"inline-block");
												$(
														"#pw1,#pw2,#nickname,#phone,#email,#zipCode,#address1,#address2,#selfcomment,#favoriteFood")
														.removeAttr("readonly");
											})

							$("#modiComBtn").on("click", function() { //�����Ϸ�
								$("#modiComBtn").css("display", "none");
								$("#modiBtn").css("display", "inline-block");
								$("#postSearch").css("display", "none");
								$("input").attr("readonly", true);
							})

							$(".myContents").on(
									"click",
									function() { //���� ����...�� ��ư �̺�Ʈ
										$(this).css("border-bottom", "none");
										$(".myContents").not(this).css(
												"border-bottom",
												"1px solid black");
									})
						})

		$("#updateForm").on(
				"submit",
				function() { //���� regex

					let regexPw = /^[A-Za-z0-9]{7,13}$/;
					let regexPhone = /^010[0-9]{8}$/;
					let regexEmail = /.+@.+\..+/;

					let pw1 = $("#pw1");
					let pw2 = $("#pw2");
					let phone = $("#phone");
					let email = $("#email");

					if (pw1.value != "" && pw2.value != "" && phone.value != ""
							&& email.value != "") {

						let result1 = regexPw.test(pw2.value);
						let result2 = regexPhone.test(phone.value);
						let result3 = regexEmail.test(email.value);

						if (pw1.value != pw2.value) {
							alert("�н����带 �ٽ� Ȯ�����ּ���.");
							return false;
						} else if (!result1) {
							alert("�н����� ������ �߸��ƽ��ϴ�.");
							return false;
						} else if (!result2) {
							alert("�ڵ��� ��ȣ ������ �߸��ƽ��ϴ�.")
							return false;
						} else if (!result3) {
							alert("�̸��� ������ �߸��ƽ��ϴ�.")
							return false;
						} else {
							alert("������ �� �Է����ּ���.")
							return false;
						}
					}
				})

		$("#pw2").on("keyup", function() { //�н����� ��ġ����
			let inputPw1 = $("#pw1");
			let inputPw2 = $("#pw2");

			if (inputPw1.val() == inputPw2.val()) {
				$("#pwConfirm").html("�н����尡 ��ġ�մϴ�").css({
					"color" : "blue",
					"font-size" : "13px"
				});
			} else {
				$("#pwConfirm").html("�н����尡 ��ġ���� �ʽ��ϴ�").css({
					"color" : "red",
					"font-size" : "13px"
				});
			}
		})
	</script>
</body>
</html>