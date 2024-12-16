<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Add Page</title>
</head>
<style>
* {
	margin: 0px;
	padding: 0px;
}

body {
	background-image:
		url(data:image/jpeg;base64,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);
	background-size: cover;
	background-attachment: fixed;
	font-family: new time roman;
}

h1 {
	font-size: 40px;
	color: white;
	margin-top: 250px;
}

p {
	font-size: 17px;
	color: white;
}

h3 {
	font-size: 25px;
	color: white;
}

.glyphicon-pencil {
	font-size: 35px;
	color: white;
	float: right;
	margin-top: 20px;
}

.col-md-5 {
	margin-top: 80px;
	box-shadow: -17px 1px 60px black;
	background: rgba(0, 0, 0, 0.4);
}

.label {
	font-weight: normal;
	margin-top: 15px;
	color: white;
	font-size: 19px;
}

.form-control {
	background: transparent;
	border-radius: 0px;
	border: 0px;
	border-bottom: 1px solid white;
	font-size: 18px;
	margin-top: 15px;
	height: 40px;
	color: white;
}

input[type="checkbox"] {
	margin-top: 15px;
	width: 15px;
	height: 15px;
}

small {
	font-size: 18px;
	color: white;
}

input[type="radio"] {
	margin-top: 22px;
}

option {
	color: grey;
}

.btn-info {
	margin-top: 20px;
	font-size: 18px;
	width: 120px;
	margin-left: 80px;
	margin-bottom: 20px;
}

.btn-warning {
	margin-top: 20px;
	font-size: 18px;
	width: 120px;
	margin-bottom: 20px;
}

/* Navbar Styling */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

.navbar-default {
	background-color: rgba(0, 0, 0, 0.5);
	border-color: rgba(0, 0, 0, 0.5);
}

.navbar-default .navbar-nav>li>a {
	color: white;
	font-size: 18px;
}

.navbar-default .navbar-toggle {
	background-color: #1e2530;
}

.navbar-default .navbar-toggle:hover {
	background-color: #1e2530;
}

.navbar-default .navbar-toggle:focus {
	background-color: #1e2530;
}
</style>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/">Home</a></li>
					<li><a href="http://localhost:8081/views/add.jsp">Add Product</a></li>
					<li><a href="http://localhost:8081/views/display.jsp">Display Products</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Form Section -->
	<form action="insert-product" method="post">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1 class="text-left">ADD PRODUCT Form</h1>
					<p class="text-left">"Our intuitive portal allows you to
						effortlessly manage product inventory, monitor sales in real time,
						and access performance data that helps you make informed
						decisions. Experience smooth and efficient operations, all while
						optimizing your business for long-term success."</p>
				</div>
				<div class="col-md-5">
					<div class="row">
						<div class="col-md-6">
							<h3 class="text-left">Add-Product</h3>
						</div>
						<div class="col-md-6">
							<span class="glyphicon glyphicon-pencil"></span>
						</div>
					</div>
					<hr>
					<!-- <div class="row">
						<label class="label col-md-2 control-label">ProductId</label>
						<div class="col-md-10">
							<input type="number" class="form-control" name="pid"
								placeholder="Please enter id">
						</div>
					</div> -->
					<div class="row">
						<label class="label col-md-2 control-label">Name</label>
						<div class="col-md-10">
							<input type="text" class="form-control" name="name"
								placeholder="Please enter name">
						</div>
					</div>
					<div class="row">
						<label class="label col-md-2 control-label">Price</label>
						<div class="col-md-10">
							<input type="text" class="form-control" name="price"
								placeholder="Please enter price">
						</div>
					</div>
					<div class="row">
						<label class="label col-md-2 control-label">Quantity</label>
						<div class="col-md-10">
							<input type="text" class="form-control" name="quantity"
								placeholder="Please enter quantity">
						</div>
					</div>
					<div class="row">
						<label class="label col-md-2 control-label">Category</label>
						<div class="col-md-10">
							<input type="text" class="form-control" name="category"
								placeholder="Please enter category">
						</div>
					</div>
                     <button type="submit" class="btn btn-info"> Add-Product</button>
				</div>
			</div>
		</div>
	</form>

</body>
</html>
