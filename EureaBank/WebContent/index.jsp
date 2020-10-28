


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="BankController" method="post">
		<table style="width: 50%"
			class="table table-hover  .table-striped">
			<tr>
				<th colspan="2">EUREABANK PRESTAMOS</th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<td><label for="cap">Capital:</label></td>
				<td><input type="number" id="cap" name="capital" size="7"
					required></td>
			</tr>
			<tr>
				<td><label for="time">Periodo:</label></td>
				<td><select style="width: 100px" name="tiempo" id="time">
						<option value="6">6 meses</option>
						<option value="12">12 meses</option>
						<option value="18">18 meses</option>
						<option value="24">24 meses</option>

				</select> <br></td>
			</tr>
			<tr>
				<td><label for="risk">Riesgo:</label></td>
				<td><select style="width: 100px" name="riesgo" id="risk">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>

				</select> <br></td>
			</tr>

		</table>

		<input class="btn btn-outline-primary" type="submit" value="consultar">


	</form>

	<div class="card mt-2">
		<div class="card-body">

			<table class="table table-striped">
				<tbody>
					<tr>
						<td>MES</td>
						<td>SALDO INICIAL</td>
						<td>AMORT.</td>
						<td>INTERES</td>
						<td>CUOTA MES</td>
						<td>SALDO FINAL</td>
						
					</tr>
					<c:forEach items="${tabla}" var="dto">
						<tr>
							<td>${dto.mes}</td>
							<td>${dto.capital}</td>
							<td>${dto.amr}</td>
							<td>${dto.interes}</td>
							<td>${dto.cuota}</td>
							<td>${dto.saldo}</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>


		</div>
	</div>
</body>
</html>