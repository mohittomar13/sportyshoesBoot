<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="com.sportyshoes.entities.Product"%>
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


	<div class="container section_gap">
		<div
			class="row fullscreen align-items-center justify-content-start section_gap">
			<div class="col-lg-12">
			<br> <br>

				<input type="text" class="form-control stickyInput" id="filter"
					name="filter" placeholder="Enter product_name to start filtering"
					onfocus="this.placeholder = ''"
					onblur="this.placeholder = 'Enter product name to start filtering'"
					style="box-shadow: 0px 0px 15px #cccccc; border: 2px solid orange;">
				<br>
				<a class="btn btn-outline-primary" role="button" href="" style="padding: 2px;">Add Product</a>
				<br><br>

				<table class="table table-hover">
					<thead class="stickyTableHead">
						<tr>
							<th scope="col">#</th>
							<th scope="col">PROD. ID</th>
							<th scope="col">IMAGE</th>
							<th scope="col">NAME</th>
							<th scope="col">TYPE</th>
							<th scope="col">QTY.</th>
							<th scope="col">COST</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<%
						int i = 1;
						@SuppressWarnings("unchecked")
						List<Product> productList = (List<Product>) request.getAttribute("allProducts");
						Collections.sort(productList, new Comparator<Product>() {
							@Override
							public int compare(Product p1, Product p2) {
								return p1.getName().compareTo(p2.getName());
							}
						});
						for (Product product : productList) {
						%>
						<tr class="cust">
							<th scope="row"><%=i++%></th>
							<td><%=product.getId()%></td>
							<td><%=product.getImage()%></td>
							<td><%=product.getName()%></td>
							<td><%=product.getType()%></td>
							<td><%=product.getQuantity()%></td>
							<td><%=product.getCost()%></td>
							<td class="editdelete"><a class="btn btn-outline-primary"
								role="button" href="<%=product.getId()%>" style="padding: 2px;">edit</a>
								&nbsp; &nbsp; &nbsp; &nbsp; <a class="btn btn-outline-danger"
								role="button" href="delete?id=<%=product.getId()%>"
								style="padding: 2px;">delete</a></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>





			</div>
		</div>
	</div>

	<%@ include file="../includefiles/scripttags.jspf"%>
</body>

</html>