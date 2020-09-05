<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style type="text/css">

/* Font */
@import url('https://fonts.googleapis.com/css?family=Quicksand:400,700')
	;

@import
	url('https://fonts.googleapis.com/css?family=Kaushan+Script|Lobster+Two|Viaoda+Libre&display=swap')
	;

/* Design */
*, *::before, *::after {
	box-sizing: border-box;
}

html {
	background-repeat: no-repeat;
	background-size: cover;
	background-image: url("drawable/controll.jpg");
}

body {
	color: #272727;
	font-family: 'Quicksand', serif;
	font-style: normal;
	font-weight: 400;
	letter-spacing: 0;
	padding: 1rem;
}

.main {
	max-width: 1200px;
	margin: 0 auto;
}

h1 {
	font-size: 70px;
	font-weight: 400;
	text-align: center;
	margin-bottom: 150px;
	font-family: 'Kaushan Script';
	color: #fff;
}
img {
	height: 300px;
	max-width: 100%;
	vertical-align: middle;
}

.btn {
	color: #ffffff;
	padding: 0.8rem;
	font-size: 14px;
	margin-bottom: 5px;
	text-transform: uppercase;
	border-radius: 4px;
	font-weight: 400;
	display: block;
	width: 100%;
	cursor: pointer;
	border: 1px solid rgba(255, 255, 255, 0.2);
	background: transparent;
}

.btn:hover {
	background-color: rgba(255, 255, 255, 0.12);
}

.cards {
	display: flex;
	flex-wrap: wrap;
	list-style: none;
	margin:0;
	padding: 0;
}

.cards_item {
	display: flex;
	padding: 1rem;
}

@media ( min-width : 40rem) {
	.cards_item {
		width: 50%;
	}
}

@media ( min-width : 56rem) {
	.cards_item {
		width: 33.3333%;
	}
}

.card {
	background-color: white;
	border-radius: 0.25rem;
	box-shadow: 0 20px 40px -14px rgba(0, 0, 0, 0.25);
	display: flex;
	flex-direction: column;
	overflow: hidden;
}

.card_content {
	padding: 1rem;
	background: linear-gradient(to bottom left, #EF8D9C 40%, #FFC39E 100%);
}

.card_title {
	color: #ffffff;
	font-size: 1.1rem;
	font-weight: 700;
	letter-spacing: 1px;
	text-transform: capitalize;
	margin: 0px;
}

.card_text {
	color: #ffffff;
	font-size: 0.875rem;
	line-height: 1.5;
	margin-bottom: 1.25rem;
	font-weight: 400;
}
</style>

</head>
<body>


	<div class="main">
		<h1>TruckLoader</h1>
		<ul class="cards">
			<li class="cards_item">
				<div class="card">
					<div class="card_image">
						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTBvsqz8NOfTdqtn_bk5s9ihx4qOQZ6dagNzw&usqp=CAU">
					</div>
					<div class="card_content">
						<h2 class="card_title">Truck Owner</h2>
						<p class="card_text">I provide Transportation Services,I own Lorries.</p>
						<a href="/ownerLogin" style="text-decoration: none">
							<button class="btn card_btn">Login</button>
						</a> <a href="/ownerRegister" style="text-decoration: none">
							<button class="btn card_btn">Register</button>
						</a>
					</div>
				</div>
			</li>
			<li class="cards_item">
				<div class="card">
					<div class="card_image">
						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSsxtPUTo_eI1KpvwBC3PYEMpiDHkoW13GscQ&usqp=CAU">
					</div>
					<div class="card_content">
						<h2 class="card_title">Customer</h2>
						<p class="card_text">I own the goods,looking for transportation services. </p>
						<a href="/customerLogin" style="text-decoration: none">
							<button class="btn card_btn">Login</button>
						</a> <a href="/customerRegister" style="text-decoration: none">
							<button class="btn card_btn">Register</button>
						</a>

					</div>
				</div>
			</li>
			

		</ul>
	</div>
</body>
</html>
