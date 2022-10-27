<%@page import="com.sportyshoes.entities.Product"%>
<%@page import="com.sportyshoes.pojos.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<%@ include file="../includefiles/headandtitle.jspf"%>
</head>

<body>

	<%@ include file="../includefiles/adminHeader.jspf"%>

	<!--================Login Box Area =================-->
	<!-- 	<section class="login_box_area section_gap"> -->
	
	
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	<section class="login_box_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="login_form_inner"
						style="box-shadow: 0px 0px 15px #cccccc;">


						<%
						Product product = (Product) request.getAttribute("product");
						Message msg = (Message) request.getAttribute("msg");
						if (msg != null) {
						%>
						<div class="alert <%=msg.getCssClass()%>" role="alert"><%=msg.getText()%></div>
						<%
						request.removeAttribute("msg");
						}
						%>

						<h3>Product &nbsp;&nbsp; Edit &nbsp;&nbsp; Form</h3>
						<!-- 						PRODUCT EDIT FORM -->
						<form class="row login_form" action="editProduct"
							method="post" id="contactForm">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="id" name="id"
									value="<%=product.getId()%>" readonly>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" name="name"
									value="<%=product.getName()%>">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="address"
									name="address" value="<%=product.getCost()%>">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="email" name="email"
									value="<%=product.getImage()%>">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password"
									name="password" value="<%=product.getQuantity()%>">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password"
									name="password" value="<%=product.getType()%>">
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn">Update Product</button>
							</div>
						</form>






					</div>
				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<br>
	<!--================End Login Box Area =================-->

	<%@ include file="../includefiles/scripttags.jspf"%>
</body>

</html>