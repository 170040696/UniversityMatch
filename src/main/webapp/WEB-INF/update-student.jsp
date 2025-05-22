<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link rel="stylesheet" href="/student/login.css"> -->

<meta charset="ISO-8859-1">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Seaweed+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<title>Student Login</title>

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/8.6.1/firebase-analytics.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-auth.js"></script>

<script>
	var firebaseConfig = {
		apiKey : "${apiKey}",
		authDomain : "${authDomain}",
		projectId : "${projectId}",
		storageBucket : "${storageBucket}",
		messagingSenderId : "${messagingSenderId}",
		appId : "${appId}"
	};

	firebase.initializeApp(firebaseConfig);

	firebase.auth().onAuthStateChanged(
			function(user) {
				if (user) {
					document.getElementById("userId").innerHTML = firebase
							.auth().currentUser.uid;
				}
			});
</script>

</head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: darkblue;
	color: white;
}

form {
	border: 3px solid #f1f1f1;
}

.content {
	max-width: 500px;
	margin: auto;
}

input {
	background-color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	width: 100%;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	border-radius: 20px;
}
/* latin-ext */
@font-face {
	font-family: 'Seaweed Script';
	font-style: normal;
	font-weight: 400;
	font-display: swap;
	src:
		url(https://fonts.gstatic.com/s/seaweedscript/v8/bx6cNx6Tne2pxOATYE8C_Rsoe3WA8qY2VQ.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB,
		U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Seaweed Script';
	font-style: normal;
	font-weight: 400;
	font-display: swap;
	src:
		url(https://fonts.gstatic.com/s/seaweedscript/v8/bx6cNx6Tne2pxOATYE8C_Rsoe3WO8qY.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6,
		U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193,
		U+2212, U+2215, U+FEFF, U+FFFD;
}

body {
	margin: 0px;
	padding: 5px;
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	height: 95vh;
	width: 100%;
	background: url(https://wallpaperaccess.com/full/1209477.jpg) no-repeat
		center fixed;
	background-size: cover;
}

form {
	/*border: 3px solid rgb(0, 0, 0);*/
	width: 430px;
	height: 520px;
	background: rgba(0, 0, 0, 0.6);
	color: #fff;
	top: 65%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	border-radius: 20px;
	padding: 10px;
}

.content {
	top: 480px;
	max-width: 500px;
	margin: auto;
}

input {
	background-color: white;
	padding: 5px 30px;
	margin: 8px 0;
	border: 3px solid rgb(0, 0, 0);
	width: 100%;
}

button {
	background-color: #ff952b;
	color: white;
	padding: 10px 5px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

ul {
	list-style-type: none;
}

.my-navbar {
	background-color: #ffffff;
}

.heading {
	color: orange;
}

.nav-item .nav-link {
	color: #000000;
	font-size: 13px;
	font-family: arial;
	letter-spacing: 2px;
	margin: 0px 10px;
	text-transform: uppercase;
}

.mega-menu {
	background-color: transparent;
}

.dropdown:hover .dropdown-menu {
	display: block;
}

.dropdown-menu {
	border: none;
}

.dropdown-item {
	padding: 12px 40px 12px 20px;
	font-size: 15px;
	font-family: arial;
	color: #000000;
	font-weight: lighter;
	background-color: #c0c0c0;
	transform-origin: center;
	animation: rotate 1.5s ease 1;
}

@
keyframes rotate { 0%{
	transform: perspective(600px) rotatey(90deg);
	transform-origin: center;
}

100
%
{
transform
:
perspective(
600px
)
rotatey(
0deg
);
transform-origin
:
center;
}
}
.dropdown-item:nth-of-type(1) {
	animation-delay: 0s;
}

.dropdown-item:nth-of-type(2) {
	animation-delay: 0.1s;
}

.dropdown-item:nth-of-type(3) {
	animation-delay: 0.2s;
}

.dropdown-item:nth-of-type(4) {
	animation-delay: 0.3s;
}

.dropdown-item:nth-of-type(5) {
	animation-delay: 0.4s;
}

.dropdown-item:nth-of-type(6) {
	animation-delay: 0.5s;
}

.dropdown-item:hover {
	background-color: #808080;
	color: #000000;
}

.navbar-brand:hover {
	text-decoration: none;
}

.navbar-brand img {
	width: 110px;
	height: 50px;
	border-radius: 50%;
}

.search-form {
	float: right;
	margin-top: 10px;
	margin-right: 100px;
}

input[type=text] {
	padding: 7px;
	border: none;
	font-size: 16px;
	font-family: sans-serif;
}

.profile {
	position: relative;
	width: 60px;
	height: 60px;
	border-radius: 20%;
	overflow: hidden;
	cursor: pointer;
}

.profile i {
	position: absolute;
	top: 15px;
	left: 10px;
	width: 100%;
	height: 100%;
	object-fit: cover;
	color: black;
	fill: black;
	font-size: 30px;
}

.menu {
	position: absolute;
	top: 120px;
	right: 10px;
	padding: 20px 15px;
	/* background:rgb(83, 93, 94);*/
	background: #c0c0c0;
	width: 300px;
	box-sizing: 0 5px 25px rgba(0, 0, 0, 0.1);
	border-radius: 15px;
	transition: 0.5s;
	visibility: hidden;
	opacity: 0;
	/*background: rgb(0, 0, 0); /* Fallback color */
	/*  background: rgba(0, 0, 0, 0.7); /* Black background with 0.5 opacity */
}

.menu.active {
	visibility: visible;
	top: 80px;
	opacity: 1;
}

.menu::before {
	content: '';
	position: absolute;
	top: -5px;
	right: 15px;
	height: 20px;
	background: #fff;
	transform: rotate(45deg);
}

.menu h3 {
	width: 100%;
	text-align: center;
	font-size: 18px;
	padding: 20px 0;
	font-family: 500;
	color: #fff;
	line-height: 1.2em;
}

.menu ul li i {
	margin-right: 10px;
}

.menu ul li {
	list-style: none;
	padding: 10px 0;
	border-top: 1px solid rgba(0, 0, 0, 0.05);
	display: flex;
	align-items: center;
}

.menu ul li img {
	max-width: 20px;
	margin-right: 10px;
	opacity: 0.5;
	transition: 0.5s;
}

.menu ul li:hover img {
	opacity: 1;
}

.menu ul li a {
	display: inline-block;
	text-decoration: none;
	color: #000000;
	font-weight: 500;
	transition: 0.5s;
}

.menu ul li:hover a {
	color: #808080;
}

.wrapper {
	position: absolute;
	top: 38%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.wrapper .search_box {
	width: 500px;
	/* background: #fff; */
	border-radius: 8px;
	height: 70px;
	display: flex;
	padding: 10px;
	box-shadow: 0 8px 6px -10px #ffffff;
	background: rgb(0, 0, 0, 1); /* Fallback color */
	background: rgba(0, 0, 0, 0.7); /* Black background with 0.5 opacity */
	color: #f1f1f1;
}

.wrapper .search_box .dropdown {
	width: 180px;
	border-right: 2px solid #dde2f1;
	color: #ffffff;
	position: relative;
	cursor: pointer;
}

.wrapper .search_box .dropdown .default_option {
	text-transform: uppercase;
	padding: 13px 15px;
	font-size: 14px;
}

.wrapper .search_box .dropdown ul {
	position: absolute;
	top: 60px;
	left: -10px;
	/* background: #fff; */
	width: 150px;
	border-radius: 5px;
	padding: 10px;
	display: none;
	box-shadow: 8px 8px 6px -10px #b3c6ff;
	background: rgb(0, 0, 0); /* Fallback color */
	background: rgba(0, 0, 0, 0.7); /* Black background with 0.5 opacity */
	color: #f1f1f1;
}

.wrapper .search_box .dropdown ul.active {
	display: block;
}

.wrapper .search_box .dropdown ul li {
	padding-bottom: 10px;
}

.wrapper .search_box .dropdown ul li:last-child {
	padding-bottom: 0;
}

.wrapper .search_box .dropdown ul li:hover {
	/* color: #616e9c;*/
	background: rgb(0, 0, 0); /* Fallback color */
	background: rgb(255, 128, 0); /* Black background with 0.5 opacity */
	color: #f1f1f1;
	border-radius: 5px;
}

.wrapper .search_box .dropdown:before {
	content: "";
	position: absolute;
	top: 18px;
	right: 20px;
	border: 8px solid;
	border-color: #ff8000 transparent transparent transparent;
}

.wrapper .search_box .search_field {
	width: 350px;
	height: 80%;
	position: relative;
}

.wrapper .search_box .search_field .input {
	width: 100%;
	height: 100%;
	border: 0px;
	font-size: 16px;
	padding-left: 20px;
	padding-right: 38px;
	color: #c0c0c0;
	background: rgba(0, 0, 0, 0.2); /* Fallback color */
	background: rgba(0, 0, 0, 0.7); /* Black background with 0.5 opacity */
	color: #ffffff;
}

.wrapper .search_box .search_field .fas {
	position: absolute;
	top: 16px;
	right: 10px;
	font-size: 22px;
	color: #ff8000;
	cursor: pointer;
}

::-webkit-input-placeholder {
	color: #bcbcbc;
}

.wrapper h3 {
	color: #414141;
	margin-bottom: 30px;
	font-style: italic;
}

footer {
	position: absolute;
	top: 600px;
	background: #ffffff;
	width: 100%;
}

.foot {
	position: absolute;
	top: 800px;
	background: #ffffff;
	width: 100%;
}

.main-content {
	color: black;
	display: flex;
}

.main-content .box {
	flex-basis: 50%;
	padding: 10px 30px;
}

.box h2 {
	font-size: 1.5rem;
	font-weight: 600;
	text-transform: uppercase;
}

.box .footercontent {
	margin: 15px 0 0 0;
}

.l .footercontent .social {
	margin: 15px 0 0 0;
}

.l .footercontent .p {
	text-align: justify;
}

.l .footercontent .social a {
	padding: 0 2px;
}

.l .footercontent .social a span {
	height: 40px;
	width: 40px;
	background: #1a1a1a;
	line-height: 40px;
	text-align: center;
	font-size: 18px;
	border-radius: 10px;
	transition: 0.3s;
	color: white;
}

.l .footercontent .social a span:hover {
	background: #ff8000;
}

.left {
	top: 10px;
	left: 20px;
	color: #ffffff;
	font-style: italic;
	margin-left: 40px;
	margin-top: 35px;
	font-size: 25px;
}

.h1-head {
	margin-top: 200px;
	margin-left: 30px;
	font-style: italic;
	color: #ffffff;
	font-size: 25px;
}
</style>
<body>

	<div class="container-fluid p-0">
		<nav class="navbar navbar-expand-lg my-navbar">
			

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav m-auto">
					<li class="heading">
						<h3>College Ranking Management System</h3>
					</li>

				</ul>
			</div>

			<!--  <div class="profile" onclick="menuToggle();">
          <i class="far fa-user icon-4x"></i>
        </div>
        <div class="menu">
         
          <ul>
          
          <li><i class="fas fa-school"></i><a href="/">Home</a></li>
          <li><i class="far fa-user"></i><a href="registration">Student Registration</a></li>
          <li><i class="fas fa-school"></i><a href="collegeLogin">College Login</a></li>
          
          
        </ul>
        </div>-->
		</nav>

		<footer class="foot">
			<br> <br>
			<div class="main-content">
				<div class="l box">
					<h2>About Us</h2>
					<div class="footercontent">
						<p>A Web site is developed to display the information
							regarding the college for a student to access the website and
							consider the colleges to pursue their education. The website also
							asks for information such as which path are they interested in,
							which job perspective or higher education.</p>
						<div class="social">
							<a href="#"><span class="fab fa-facebook-f"></span></a> <a
								href="#"><span class="fab fa-twitter"></span></a> <a href="#"><span
								class="fab fa-instagram"></span></a> <a href="#"><span
								class="fab fa-youtube"></span></a>
						</div>
					</div>
				</div>
				<div class="c box">
					<h2>Address</h2>
					<div class="footercontent">
						<div class="place">
							<span class="fas fa-map-marker-alt"></span> <span class="text">No
								5/535, Old Mahabalipuram Road, Okkiam -Thoraipakkam, Chennai
								600096, Tamil Nadu, India.</span>
						</div>

					</div>
				</div>
				<div class="r box">
					<h2>Contact Us</h2>
					<div class="footercontent">
						<div class="phone">
							<span class="fas fa-phone-alt"></span> <span class="text">+91-7547808959</span>
						</div>
						<div class="email">
							<span class="fas fa-envelope"></span> <span class="text">college.ranking@gmail.com</span>
						</div>
					</div>
				</div>
			</div>

		</footer>


	</div>
	<section class="temp" style="align: center;">
		<br> <br>

		<p style="text-align: center; color: black; font-size: 28px;">You
			can Update your Details here!</p>
		<form:form action="/updateStudent" method="post"
			modelAttribute="student" class="content">

			<table>
				<tr>
					<td><form:label path="studentId">Student ID: </form:label></td>
					<td><p style="color: orange;" id="userId">${userId}</p></td>
					<td><form:input path="studentId" id="userId" type="hidden"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="firstName">First Name: </form:label></td>
					<td><form:input path="firstName"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="lastName">Last Name: </form:label></td>
					<td><form:input path="lastName"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="branch">Branch: </form:label></td>
					<td><form:input path="branch"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="score">Score: </form:label></td>
					<td><form:input path="score"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="location">Location: </form:label></td>
					<td><form:input path="location"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="catagory" style="padding-top:20px;">Catagory: </form:label></td>
					<td><form:select path="catagory"
							style="height:40px; width:300px;">
							<form:option value="Overall">Overall</form:option>
							<form:option value="Research">Research</form:option>
							<form:option value="Employment">Employment</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td><form:label path="nationalExamRank">National ExamRank: </form:label></td>
					<td><form:input path="nationalExamRank"></form:input></td>
				</tr>
			</table>
			<form:button>Update</form:button>
		</form:form>
	</section>

</body>
</html>