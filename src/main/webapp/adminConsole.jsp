<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<%@ include file="../includefiles/headandtitle.jspf"%>
</head>

<body>
	<%@ include file="../includefiles/adminHeader.jspf"%>

	<div class="container">
		<div class="row fullscreen align-items-center justify-content-center">
			<div class="col-lg-12">
				<br>
				<br>
				<br>
				<br>
				<div class="container" style="margin-left:20%">
					<div class="card" style="width: 35rem; border: 2px solid orange;">
						<table>
							<tr>
								<td><div class="container text-center" style="width: 18rem">
										<img class="card-img-top" width="300"
											src="https://t4.ftcdn.net/jpg/04/75/00/99/360_F_475009987_zwsk4c77x3cTpcI3W1C1LU4pOSyPKaqi.jpg"
											alt="Card image cap">
									</div></td>
								<td>
									<div class="card-body">
									<div class="container text-center">
										<h5 class="card-title" style="background: #024467; padding:5px; color: white; border-radius: 20px;">
											<%=admin.getName()%>
										</h5>
									</div>
										ID: <input type="text" class="form-control"
											value="<%=admin.getId()%>" readonly> E-mail<input
											type="text" class="form-control"
											value="<%=admin.getEmail()%>" readonly> <a href="#"
											class="card-link">Edit</a> <a href="#" class="card-link">Manage
										</a>
									</div>
								</td>
							</tr>

						</table>


					</div>
					<!-- 				****************************** -->
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../includefiles/scripttags.jspf"%>
</body>

</html>