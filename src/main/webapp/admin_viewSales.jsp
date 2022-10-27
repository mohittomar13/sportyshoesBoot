<%@page import="com.sportyshoes.entities.Saleorder"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<%@ include file="../includefiles/headandtitle.jspf"%>
</head>

<body>
	<%@ include file="../includefiles/adminHeader.jspf"%>

	<div class="mainContainer">
		<div class="container section_gap">
			<br>
			<br>
			<div
				class="row fullscreen align-items-center justify-content-start section_gap">
				<div class="col-lg-12">

					<input type="text" class="form-control stickyInput" id="filter"
						name="filter" placeholder="Enter CUSTOMER_ID to start filtering"
						onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'Enter customer_id to start filtering'"
						style="box-shadow: 0px 0px 15px #cccccc; border: 2px solid orange;">
					<br>
					<br>



					<table class="table table-hover">
						<thead class="stickyTableHead">
							<tr>
								<th scope="col">#</th>
								<th scope="col">ORDER ID</th>
								<th scope="col">CUSTOMER ID</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<%
							int i = 1;
							@SuppressWarnings("unchecked")
							List<Saleorder> orderList = (List<Saleorder>) request.getAttribute("orderList");
							for (Saleorder saleOrder : orderList) {
							%>
							<tr class="cust">
								<th scope="row"><%=i++%></th>
								<td><%=saleOrder.getId()%></td>
								<td><%=saleOrder.getCustomer().getId()%></td>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>







				</div>
			</div>
		</div>
	</div>

	<%@ include file="../includefiles/scripttags.jspf"%>
</body>

</html>