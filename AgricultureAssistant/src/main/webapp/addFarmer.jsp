<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Add Farmer</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap"
	rel="stylesheet">

<style>

/* Rice field background */
body {
	font-family: 'Poppins', sans-serif;
	background:
		url('https://images.unsplash.com/photo-1502082553048-f009c37129b9?auto=format&fit=crop&w=1920&q=80')
		no-repeat center center/cover;
	min-height: 100vh;
	margin: 0;
	animation: zoomBg 20s infinite alternate ease-in-out;
}

/* Dark overlay */
.overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.55);
	z-index: 0;
}

/* Container */
.container {
	position: relative;
	z-index: 2;
}

/* Glass form box */
.glass-box {
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(12px);
	border-radius: 20px;
	padding: 35px;
	margin-top: 60px;
	color: white;
	box-shadow: 0 10px 40px rgba(0, 0, 0, 0.7);
	animation: fadeUp 1.2s ease;
}

/* Heading */
h3 {
	font-weight: 600;
	margin-bottom: 25px;
	text-align: center;
	animation: glow 2s infinite alternate;
}

/* Inputs */
.form-control {
	border-radius: 10px;
	border: none;
}

.form-control:focus {
	box-shadow: 0 0 12px #00ff88;
}

/* Button */
.btn-success {
	width: 100%;
	padding: 12px;
	font-size: 18px;
	border-radius: 25px;
	animation: pulse 3s infinite;
}

.btn-success:hover {
	transform: scale(1.05);
}

/* Animations */
@
keyframes zoomBg {
	from {background-size: 100%;
}

to {
	background-size: 110%;
}

}
@
keyframes fadeUp {from { opacity:0;
	transform: translateY(40px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
keyframes glow {from { color:white;
	
}

to {
	color: #aaffcc;
	text-shadow: 0 0 10px #00ff88;
}

}
@
keyframes pulse { 0%{
	box-shadow: 0 0 0 0 rgba(0, 255, 100, 0.6);
}
70
%
{
box-shadow
:
0
0
0
15px
rgba(
0
,
255
,
100
,
0
);
}
100
%
{
box-shadow
:
0
0
0
0
rgba(
0
,
255
,
100
,
0
);
}
}
</style>

</head>

<body>

	<div class="overlay"></div>

	<div class="container">

		<div class="row justify-content-center">

			<div class="col-md-5">

				<div class="glass-box">

					<h3>🌾 Add Farmer</h3>

					<form action="addFarmer" method="post">

						<label>Name</label> <input name="name" class="form-control mb-2"
							required> <label>Village</label> <input name="village"
							class="form-control mb-2" required> <label>Mobile</label>

						<input name="mobile" class="form-control mb-3" required>

						<button class="btn btn-success">Add Farmer</button>

					</form>

				</div>

			</div>

		</div>

	</div>

</body>
</html>