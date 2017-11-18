<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="utf-8">

<head>
	<meta charset="utf-8">
	<title>ForSho</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet'
	 type='text/css'>

	<link rel="stylesheet" href="./css/animate.css">
	<link rel="stylesheet" href="./css/style_login.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden">
				<span id="logo">ForSho</span>
			</h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>로그인</h2>
			</div>
			<form action="/login" method="post"> 
				<label for="username">사용자</label>
				<br/>
				<input type="text" name="id">
				<br/>
				<label for="password">비밀번호</label>
				<br/>
				<input type="password" name="password">
				<br/>
				<button id="explore" type="submit">탐험하기</button>
			</form>
			<br/>
			<button type="submit" onclick="location.href='/signup'">회원가입</button>
			<br/>
			<a href="/find">
				<p class="small">비밀번호가 기억나지 않나요?</p>
			</a>
		</div>
	</div>
</body>

<script>
	$(document).ready(function () {
		$('#logo').addClass('animated fadeInDown');
		$("input:text:visible:first").focus();
	});
	$('#username').focus(function () {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function () {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function () {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function () {
		$('label[for="password"]').removeClass('selected');
	});

	/* $('#explore').click(function () {
		var xhr = new XMLHttpRequest();
		xhr.onload = function () {
			if (xhr.status === 200 && xhr.readyState == 4) {
				console.log(xhr.response);
				if (xhr.responseText == 1) {
					console.log("1")
				} else if (xhr.responseText == 2) {
					console.log("2");
				} else if (xhr.responseText == 3) {
					console.log("3");
					window.location.href = "http://localhost:8080/main";
				} else {
					console.log("error");
				}
			}
		};
		xhr.open('POST', 'http://localhost:8080/login', true); //요청 준비
		xhr.setRequestHeader("Content-Type", "application/json");
		xhr.send(JSON.stringify({ id: $('#username').val(), password: $('#password').val()}));
 */
		// $.ajax({
		// 	type: "POST",
		// 	url: 'http://localhost:8080/login',
		// 	data: JSON.stringify({ id: "hello@user.com", password: "1138" }),
		// 	//dataType: "json", 
		// 	processData: false,
		// 	contentType: "application/json",
		// 	success: function (data, textStatus) {
		// 		console.log(data.redirect)
		// 		console.log(textStatus)
		// 		if (data.redirect) {
		// 			// data.redirect contains the string URL to redirect to
		// 			console.log(data)
					
		// 		}
		// 		else {
		// 			// data.form contains the HTML for the replacement form
		// 			$("#myform").replaceWith(data.form);
		// 		}
		// 	}
		// });
	//})

</script>

</html>