<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page
	import="java.util.*, com.agri.dao.FarmerDAO, com.agri.model.Farmer"%>

<!DOCTYPE html>
<html>
<head>

<title>Farmers</title>

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
	min-height: 100vh;
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

/* Main container */
.container {
	position: relative;
	z-index: 2;
}

/* Glass panel */
.glass-box {
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(12px);
	border-radius: 20px;
	padding: 30px;
	margin-top: 40px;
	color: white;
	box-shadow: 0 10px 40px rgba(0, 0, 0, 0.7);
	animation: fadeUp 1.2s ease;
}

/* Heading */
h3 {
	font-weight: 600;
	margin-bottom: 20px;
	animation: glow 2s infinite alternate;
}

/* Table styling */
.table {
	background: rgba(255, 255, 255, 0.9);
	border-radius: 10px;
	overflow: hidden;
}

/* Button styling */
.btn-success {
	border-radius: 25px;
	padding: 10px 20px;
	animation: pulse 3s infinite;
}

.btn-danger {
	border-radius: 20px;
}

.btn:hover {
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
	box-shadow: 0 0 0 0 rgba(0, 255, 100, 0.5);
}
70








%
{
box-shadow








:








0








0








0








12px








rgba






(








0
,
255
,
100
,
0








)






;
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








rgba






(








0
,
255
,
100
,
0








)






;
}
}
</style>

</head>

<body>

	<div class="overlay"></div>

	<div class="container">

		<div class="glass-box">

			<h3>🌾 Farmer List</h3>

			<a href="addFarmer.jsp" class="btn btn-success mb-3"> + Add
				Farmer </a>

			<table class="table table-bordered table-hover">

				<tr class="table-dark">

					<th>ID</th>
					<th>Name</th>
					<th>Village</th>
					<th>Mobile</th>
					<th>Action</th>

				</tr>

				<%
				FarmerDAO dao = new FarmerDAO();

				List<Farmer> list = dao.getAllFarmers();

				for (Farmer f : list) {
				%>

				<tr>

					<td><%=f.getId()%></td>
					<td><%=f.getName()%></td>
					<td><%=f.getVillage()%></td>
					<td><%=f.getMobile()%></td>

					<td><a href="deleteFarmer?id=<%=f.getId()%>"
						class="btn btn-danger btn-sm"> Delete </a></td>

				</tr>

				<%
				}
				%>

			</table>

		</div>

	</div>

</body>
</html>