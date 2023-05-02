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
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');



* {
	box-sizing: border-box;
		font-family: 'Nanum Gothic', sans-serif;
}

a {
	text-decoration: none;
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

.myPageHeader {
	height: 4%;
	width: 80%;
	text-align: center;
	line-height: 60px;
	font-size: 14px;
	background-color: #ED1C16;
	color: white;
	font-width: bold;
	border-radius: 30px;
	box-shadow: 1px 1px 5px 1px silver;
	text-align: center;
	position: relative;
	left: 70px;
	margin-bottom: 30px;
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
	margin-bottom: 30px;
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
	position: relative;
	left: 90px;
}

.profileImage {
	height: 65%;
	margin-top: 50px;
	margin-left: 50px;
}

.profileImage>button {
	margin-top: 20px;
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
	top: 1px;
	font-size: 12px;
	height: 30px;
	display: inline-block;
	width: 80px;
	text-align: center;
	background-color: rgb(240, 240, 240);
	line-height: 30px;
}

.body2Navi>a:first-of-type {
	border-bottom: none;
}

.body2Contents {
	width: 100%;
	height: 530px;
	border: 1px solid black;
	box-shadow: 1px 1px 5px 1px silver;
	background-color: rgb(240, 240, 240);
	border: 1px solid black;
	padding: 30px;
	/* 	�ϴ� �׺�����͸� ���̱� ���� position �ο� */
	position: relative;
}

.body2Contents>table {
	width: 100%;
	text-align: center;
	font-size: 14px;
	magin: 0 auto;
}

#replyList {
	display: none;
}

#reviewMark {
	display: none;
}

#consultList {
	display: none;
}

#favoriteStoreList {
	display: none;
}

/* �ϴ� �׺������ �߰� */
/* �׺������ ���� */
.body2listNavi {
	border: 1px solid black;
	height: 60px;
	width: 100%;
	text-align: center;
	margin: 20px auto 0 auto;
	padding: 10px 0px 10px;
	background-color: rgba(255, 255, 255, 0.9);
	position: absolute;
	bottom: 0px;
	left: 0px;
	border-top: 1px solid #fff;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	justify-content: center
}

.navigator_list {
	list-style-type: none;
	padding-right: 50px;
	margin: 0px;
	display: flex;
	justify-content: right;
	align-items: center;
}

.navigator_list_item {
	width: 30px;
	height: 30px;
	float: left;
	margin-left: 5px;
	margin-right: 5px;
}

.navigator_list_item_btn_layout {
	border: 1px solid rgb(178, 178, 178);
	width: 30px;
	height: 30px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.item {
	font-size: 15px;
	text-decoration: none;
}

.navigator_direction_btn {
	position: relative;
	width: 100%;
	height: 100%;
	right: 0px;
	font-size: 15px;
	background-color: white;
	border: 0px;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>
	<div class="mypage">
		<div class="myPageHeader">����������</div>
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
						<input type="text" value="${my.userID}" id="id" readonly><br>
						<input type="password" value="${my.pw}" id="pw1" name="pw"readonly><br>
						<input type="password" id="pw2" readonly id="pwConfirm"><br>
						<input type="text" value="${my.name}" readonly><br>
						<input type="text" value="${my.nickname}" id="nickname" name="nickname" readonly><br>
						<input type="text" value="${my.phone}" id="phone" name="phone" readonly><br>
						<input type="text" value="${my.email}" id="email" name="email" readonly><br>
						<input type="text" value="${my.classes}" readonly><br>
						<input type="text" value="${my.selfcomment}" id="selfcomment" name="selfcomment" readonly><br>
						<input type="text" value="${my.favoriteFood}" id="favoriteFood" name="favoriteFood" readonly><br>
						
						<button id="modiBtn" type="button">�����ϱ�</button>
						<button id="modiComBtn" type="submit">�����Ϸ�</button>
						<button id="memberoutBtn" type="button">ȸ��Ż��</button>
					</div>
				</form>
			</div>
		</div>
		<div class="body2">
			<div class="body2Navi">
				<a href="#null" class="myContents" id="writeListBtn">���� �� ��</a> 
				<a href="#null" class="myContents" id="replyListBtn">���� �� ���</a> 
				<a href="#null" class="myContents" id="reviewMarkBtn">���� ��ũ���� ����</a>
				<a href="#null" class="myContents" id="favoriteStoreListBtn">���� ���ã���� ����</a>
				<a href="#null" class="myContents" id="consultListBtn">1:1 ����</a>
			</div>
			<div class="body2Contents">
				<table border-bottom="1" class="table" id="writeList">
					<!--���� �� �� ����Ʈ �̾Ƴ���-->
					<colgroup>
						<col width="5%">
						<col width="45%">
						<col width="25%">
						<col width="15%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th>��ȣ</th>
							<th>����</th>
							<th>�ۼ���</th>
							<th>�ۼ���</th>
							<th></th>
						</tr>
					</thead>
					<tbody id="writeListToPrint">
						<!-- ����Ʈ ��� ���� -->
					</tbody>
				</table>
				<table border-bottom="1" class="table" id="replyList">
					<!--���� �� ��� ����Ʈ �̾Ƴ���-->
					<colgroup>
						<col width="5%">
						<col width="45%">
						<col width="25%">
						<col width="15%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th>��ȣ</th>
							<th>���� �̸�</th>
							<th>��� ����</th>
							<th>����</th>
							<th>�ۼ���</th>
						</tr>
					</thead>
					<tbody id="replyListToPrint">
						<!-- ����Ʈ ��� ���� -->
					</tbody>
				</table>
				<table border-bottom="1" class="table" id="reviewMark">
					<!--��α��� ���� ��ũ��-->
					<colgroup>
						<col width="5%">
						<col width="45%">
						<col width="25%">
						<col width="15%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th>��ȣ</th>
							<th>����</th>
							<th>�ۼ���</th>
							<th>���� �̸�</th>
							<th>���� �ۼ���</th>
						</tr>
					</thead>
					<tbody id="reviewMarkToPrint">
						<!-- ����Ʈ ��� ���� -->
					</tbody>
				</table>

				<!--     ���� �߰��� ���� ���ã�� �� ���� ����Ʈ -->
				<table border-bottom="1" class="table" id="favoriteStoreList">
					<!-- ���� ���ã�� ����Ʈ-->
					<colgroup>
						<col width="5%">
						<col width="45%">
						<col width="25%">
						<col width="15%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th>���� no.</th>
							<th>���� �̸�</th>
							<th>���� �ּ�</th>
							<th>���� ī�װ�</th>
							<th>���� ����</th>
						</tr>
					</thead>
					<tbody id="favoriteStoreListToPrint">
						<!-- ����Ʈ ��� ���� -->
					</tbody>
				</table>

				<table border-bottom="1" class="table" id="consultList">
					<!-- 1:1���� ����Ʈ -->
					<colgroup>
						<col width="5%">
						<col width="45%">
						<col width="25%">
						<col width="15%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th>��ȣ</th>
							<th>����</th>
							<th>�ۼ���</th>
							<th>��ȸ��</th>
							<th>�ۼ���</th>
						</tr>
					</thead>
					<tbody id="consultListToPrint">
						<!-- ����Ʈ ��� ���� -->
					</tbody>
				</table>

				<!-- �߰��� �׺������ -->
				<div class="body2listNavi">
					<ul class="navigator_list"></ul>
				</div>
			</div>

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

		$("document").ready(function() {

			$("#memberoutBtn").on("click", function() { //Ż���ϱ� ��ư ���� �� �̵�
				location.href = "/memberout/memberout.jsp";
			})

			$("#modiBtn").on("click",function() { //�����ϱ�

				$("#postSearch").css("display","inline-block");
				$("#modiBtn").css("display","none");
				$("#modiComBtn").css("display","inline-block");
				$("#pw1,#pw2,#nickname,#phone,#email,#zipCode,#address1,#address2,#selfcomment,#favoriteFood").removeAttr("readonly");
			})

			$("#modiComBtn").on("click", function() { //�����Ϸ�
				$("#modiComBtn").css("display", "none");
				$("#modiBtn").css("display", "inline-block");
				$("#postSearch").css("display", "none");
				$("input").attr("readonly", true);
			})

			$(".myContents").on("click",function() { //���� ����...�� ��ư �̺�Ʈ
				$(this).css("border-bottom", "none");
				$(".myContents").not(this).css(
					"border-bottom",
					"1px solid black"
				);
			})

			
			// ajax�� list�� navi �� return
			//���� �� �� ��ư ������ ���� ���̺� ������ �̺�Ʈ
			$("#writeListBtn").on("click",function() { 
				
				$.ajax({
					url : "/selectBymypage.fullreview",
					type : "post",
					dataType : "json"
				}).done(function(resp){
					$("#writeListToPrint").html("");
					$(".navigator_list").html("");
					let writeFullReviewList = JSON.parse(resp.writeFullReviewList);
					let writeFullReviewNavi = JSON.parse(resp.writeFullReviewNavi);
					$("#writeListToPrint").append(writeFullReviewList);
					$(".navigator_list").append(writeFullReviewNavi);

					$("#writeList").css("display","table");
					$("table").not("table#writeList").css("display","none");

					setnavi();
				})
			})
			

			//���� �� ��� ��ư ������ ���� ���̺� ������ �̺�Ʈ
			$("#replyListBtn").on("click",function() { 
				
				$.ajax({
					url : "/selectBymypage.commentReview",
					type : "post",
					dataType : "json"
				}).done(function(resp){
					$("#replyListToPrint").html("");
					$(".navigator_list").html("");
					let writeMyCommentList = JSON.parse(resp.writeMyCommentList);
					let writeMyCommentNavi = JSON.parse(resp.writeMyCommentNavi);
					$("#replyListToPrint").append(writeMyCommentList);
					$(".navigator_list").append(writeMyCommentNavi);

					$("#replyList").css("display","table");
					$("table").not("table#replyList").css("display","none");

					setnavi();
				})
			})
			
 			//���� ��ũ���� ��α� ��ư ������ ���� ���̺� ������ �̺�Ʈ\
			$("#reviewMarkBtn").on("click",function() {
				
				$.ajax({
					url : "/selectScrapListBymypage.fullreview",
					type : "post",
					dataType : "json"
				}).done(function(resp){
					$("#reviewMarkToPrint").html("");
					$(".navigator_list").html("");
					let myFullReviewScrapList = JSON.parse(resp.myFullReviewScrapList);
					let myFullReviewScrapNavi = JSON.parse(resp.myFullReviewScrapNavi);
					
					$("#reviewMarkToPrint").append(myFullReviewScrapList);
					$(".navigator_list").append(myFullReviewScrapNavi);

					$("#reviewMark").css("display", "table");
					$("table").not("table#reviewMark").css("display", "none");
					
					setnavi();
				})
			})

			//���ã�� ��ư ������ ���� ���̺� ������ �̺�Ʈ
			$("#favoriteStoreListBtn").on("click",function() { 
				
				$.ajax({
					url : "/selectFavoriteStore.store",
					type : "post",
					dataType : "json"
				}).done(function(resp) {
					$("#favoriteStoreListToPrint").html("");
					$(".navigator_list").html("");
					let FavoriteStoreList = JSON.parse(resp.FavoriteStoreList);
					let FavoriteStoreNavi = JSON.parse(resp.FavoriteStoreNavi);
					$("#favoriteStoreListToPrint").append(FavoriteStoreList);
					$(".navigator_list").append(FavoriteStoreNavi);

					$("#favoriteStoreList").css("display","table");
					$("table").not("table#favoriteStoreList").css("display","none");

					setnavi();
				})
			})
			
			//1:1 ���� ���� ��ư ������ ���̺� ������ �̺�Ʈ
			$("#consultListBtn").on("click",function() { 
				
				$.ajax({
					url : "/selectConsultListBymypage.consult",
					type : "post",
					dataType : "json"
				}).done(function(resp) {
					$("#consultListToPrint").html("");
					$(".navigator_list").html("");
					let myConsultList = JSON.parse(resp.myConsultList);
					let myConsultNavi = JSON.parse(resp.myConsultNavi);
					$("#consultListToPrint").append(myConsultList);
					$(".navigator_list").append(myConsultNavi);

					$("#consultList").css("display","table");
					$("table").not("table#consultList").css("display", "none");

					setnavi();
				})
			})
		})
		
		//�׺�����Ϳ� AJAX ���� ��ũ �ο�
		function setnavi() {
			$(".navibtn").on("click",function() {

				if ($(this).attr("searchto") == "writeFullReviewList") {
					let location = $(this).attr("location");
					$.ajax({
						url : "/selectBymypage.fullreview",
						type : "post",
						data : {
							cpage : location
						},
						dataType : "json"
					}).done(function(resp){
						$("#writeListToPrint").html("");
						$(".navigator_list").html("");
						let writeFullReviewList = JSON.parse(resp.writeFullReviewList);
						let writeFullReviewNavi = JSON.parse(resp.writeFullReviewNavi);
						$("#writeListToPrint").append(writeFullReviewList);
						$(".navigator_list").append(writeFullReviewNavi);

						$("#writeList").css("display","table");
						$("table").not("table#writeList").css("display","none");

						setnavi();
					})
					
				} else if ($(this).attr("searchto") == "writeMyCommentList") {
					let location = $(this).attr("location");
					$.ajax({
						url : "/selectBymypage.commentReview",
						type : "post",
						data : {
							cpage : location
						},
						dataType : "json"
					}).done(function(resp){
						$("#replyListToPrint").html("");
						$(".navigator_list").html("");
						let writeMyCommentList = JSON.parse(resp.writeMyCommentList);
						let writeMyCommentNavi = JSON.parse(resp.writeMyCommentNavi);
						$("#replyListToPrint").append(writeMyCommentList);
						$(".navigator_list").append(writeMyCommentNavi);

						$("#replyList").css("display","table");
						$("table").not("table#replyList").css("display","none");

						setnavi();
					})
					
				} else if ($(this).attr("searchto") == "writeMyFullReviewScrapList") {
					let location = $(this).attr("location");
					$.ajax({
						url : "/selectScrapListBymypage.fullreview",
						type : "post",
						data : {
							cpage : location
						},
						dataType : "json"
					}).done(function(resp){
						$("#reviewMarkToPrint").html("");
						$(".navigator_list").html("");
						let myFullReviewScrapList = JSON.parse(resp.myFullReviewScrapList);
						let myFullReviewScrapNavi = JSON.parse(resp.myFullReviewScrapNavi);
						$("#reviewMarkToPrint").append(myFullReviewScrapList);
						$(".navigator_list").append(myFullReviewScrapNavi);

						$("#reviewMark").css("display", "table");
						$("table").not("table#reviewMark").css("display", "none");
						
						setnavi();
					})
					
				} else if ($(this).attr("searchto") == "FavoriteStoreList") {
					let location = $(this).attr("location");
					$.ajax({
						url : "/selectFavoriteStore.store",
						type : "post",
						data : {
							cpage : location
						},
						dataType : "json"
					}).done(function(resp) {
						$("#favoriteStoreListToPrint").html("");
						$(".navigator_list").html("");
						let FavoriteStoreList = JSON.parse(resp.FavoriteStoreList);
						let FavoriteStoreNavi = JSON.parse(resp.FavoriteStoreNavi);
						$("#favoriteStoreListToPrint").append(FavoriteStoreList);
						$(".navigator_list").append(FavoriteStoreNavi);
						$("#favoriteStoreList").css("display","table");
						$("table").not("table#favoriteStoreList").css("display","none");

						setnavi();
					})
					
				} else if ($(this).attr("searchto") == "myConsultList") {
					let location = $(this).attr("location");
					$.ajax({
						url : "/selectConsultListBymypage.consult",
						type : "post",
						dataType : "json"
					}).done(function(resp) {
						$("#consultListToPrint").html("");
						$(".navigator_list").html("");
						let myConsultList = JSON.parse(resp.myConsultList);
						let myConsultNavi = JSON.parse(resp.myConsultNavi);
						$("#consultListToPrint").append(myConsultList);
						$(".navigator_list").append(myConsultNavi);

						$("#consultList").css("display","table");
						$("table").not("table#consultList").css("display", "none");

						setnavi();
					})
				}
			})
		}
		

		$("#updateForm").on("submit",function() { //���� regex

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