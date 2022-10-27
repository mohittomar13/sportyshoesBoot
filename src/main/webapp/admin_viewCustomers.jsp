<%@page import="java.util.Map"%>
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
						name="filter" placeholder="Enter customer name to start filtering"
						onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'Enter customer name to start filtering'"
						style="box-shadow: 0px 0px 15px #cccccc; border: 2px solid orange;">
					<br>
					<br>



					<table class="table table-hover">
						<thead class="stickyTableHead">
							<tr>
								<th scope="col">#</th>
								<th scope="col">CUSTOMER ID</th>
								<th scope="col">NAME</th>
								<th scope="col">EMAIL</th>
								<th scope="col">PASSWORD</th>
								<th scope="col">ADDRESS</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<%
							int i = 1;
							@SuppressWarnings("unchecked")
							List<Customer> customers = (List<Customer>) request.getAttribute("allCustomers");
							
							/*
							This not working
							Check admin_editCustomer.jsp, CustomerController.jsp -> editCustomer and
							edit mappings. It is not working as not able to set a global variable
							with name "affectedId". When we go from editCustomer.jsp page to
							viewCustomers.jsp page the value is not forwarded.
							*/
							Integer affectedId = (Integer) request.getAttribute("affectedId");
							
							
							Collections.sort(customers, new Comparator<Customer>() {
								@Override
								public int compare(Customer c1, Customer c2) {
									return c1.getName().compareTo(c2.getName());
								}
							});
							for (Customer customer : customers) {
								if(affectedId != null && customer.getId() == affectedId){
							%>
							<tr class="cust table-success">
							<%
								request.removeAttribute("affectedId");
								} else {
							%>

							<tr class="cust">
							
							<%
								}
							%>
							
								<th scope="row"><%=i++%></th>
								<td><%=customer.getId()%></td>
								<td><%=customer.getName()%></td>
								<td><%=customer.getEmail()%></td>
								<td><%=customer.getPassword()%></td>
								<td><%=customer.getAddress()%></td>
								<td class="editdelete"><a class="btn btn-outline-primary"
									role="button" href="<%=customer.getId()%>"
									style="padding: 2px;">edit</a> &nbsp; &nbsp; &nbsp; &nbsp; <a
									class="btn btn-outline-danger" role="button"
									href="delete?id=<%=customer.getId()%>" style="padding: 2px;">delete</a>
								</td>
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