<%@page import="com.sportyshoes.entities.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<%@ include file="../includefiles/headandtitle.jspf" %>
</head>

<body>

	<%@ include file="../includefiles/header.jspf"%>

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<br>
		<br>
		<div class="container">
			<h1>Product Details</h1>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="s_Product_carousel">
						<div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div>
					</div>
				</div>
				
				<%
					Product product = (Product) request.getAttribute("product");
				%>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3><%= product.getName() %></h3>
						<h2>&#8377;<%= product.getCost() %>0/-</h2>
						<ul class="list">
							<li><a class="active" href="#"><span>Category</span> :
								<%= product.getType() %></a></li>
							<li><a href="#"><span>Availibility</span>: In Stock</a></li>
						</ul>
						<a class="primary-btn" href="checkout?id=<%= product.getId() %>">Buy</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<!--================End Single Product Area =================-->

	<%@ include file="../includefiles/footer.jspf"%>
	<%@ include file="../includefiles/scripttags.jspf"%>
</body>

</html>