<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CGI</title>
<style>
#div {
	height: 350px;
	width: 600px;
	margin: auto;
	margin-top: 100px;
}
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body class="container-fluid">
	<div class="card" id="div">
		<form action="register" method="post">
			<table class="table table-hover table-striped">
				<h2 class="card-header text-center bg-danger text-light">REGISTRATION
					FORM</h2>
				<tr>
					<td>ENTER USER NAME:-</td>
					<td><input type="text" name="name" placeholder="USER NAME" width="auto"></td>
				</tr>
				<tr>
					<td>USER GENDER :-</td>
					<td><input type="radio" name="gender" value="MALE"> MALE
					<input type="radio" name="gender" value="FEMALE"> FEMALE
					<input type="radio" name="gender" value="OTHERS"> OTHERS</td>
					
					
				</tr>
				<tr>
					<td>CHOOSE CITY:-</td>
					<td><select name="location">
							<option value="hyd ">HYD</option>
							<option value="chn ">CHENNAI</option>
							<option value="pune ">PUNE</option>
							<option value="mbm ">MUMBAI</option>
					</select></td>
				</tr>
				<tr>
					<td>CHOOSE BROADBAND:-</td>
					<td><select name="broadband">
							<option value="wifi ">WI-FI</option>
							<option value="chn ">INTERNET</option>
							<option value="pune ">HOTSPOT</option>
					</select></td>
				</tr>

				<tr>
					<td><input type="submit" value="register" class=" btn btn-outline-success"></td>
				</tr>

			</table>

		</form>

	</div>

</body>
</html>