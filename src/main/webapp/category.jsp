<!-- If something breaks uncomment the below line -->
<!-- <body id="category"> -->


<%@page import="java.util.List"%>
<%@page import="com.sportyshoes.entities.Product"%>
<%@ include file="../includefiles/headerMAIN.jspf"%>

<%@ include file="../includefiles/header.jspf"%>

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
	<br>
	<br>
	<div class="container">
		<%
		/*
			pageType comming from = NavigationalRedirects.java
		*/
		// String pageType = (String)request.getAttribute("pageType"); 

		@SuppressWarnings("unchecked")
		List<Product> productList = (List<Product>) request.getAttribute("productList");
		String pageType = request.getAttribute("pageType").toString();
		if (pageType.equals("men")) {
		%>
		<h1>
			Shop for
			<%=pageType%>
			<i class="fa-solid fa-mars"></i> shoes
		</h1>
		<%
		} else if (pageType.equals("women")) {
		%>
		<h1>
			Shop for
			<%=pageType%>
			<i class="fa-solid fa-venus"></i> shoes
		</h1>
		<%
		} else if (pageType.equals("kids")) {
		%>
		<h1>
			Shop for
			<%=pageType%>
			<i class="fa-solid fa-child-reaching"></i> shoes
		</h1>
		<%
		} else {
		%>
		<h1>
			Shop for
			<%=pageType%>
			shoes
		</h1>
		<%
		}
		%>
	</div>
</section>
<!-- End Banner Area -->


<br>
<br>
<!-- Main Body Start -->

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-xl-9 col-lg-9 col-md-6">
			<div class="row">

				<%
				for (Product product : productList) {
					if (pageType.compareTo("shop") == 0) {
				%>

				<a href="singleProduct?id=<%=product.getId()%>">
				<div class="col-lg-3 col-md-6">
					<div class="single-product">
						<img class="img-fluid" src="img/product/p2.jpg" alt="">
						<div class="product-details">
							<h6><%=product.getName()%></h6>
							<div class="price">
								<h6>
									&#8377;
									<%=product.getCost()%></h6>
								<h6 class="l-through">$210.00</h6>
								<div class="container text-center">
								<h6 style="width: 100px; background: #636FB2; color: white; padding: 3px;">--<%=product.getType()%>--</h6>
								</div>
							</div>
							<div class="container text-center">
								<a class="btn" href="#" role="button" style="background: orange; color: white;">Buy Now</a>
							</div>
						</div>
					</div>
				</div>
				</a>




				<%
				} else if(product.getType().compareTo(pageType) == 0) {
				%>

				<a href="singleProduct?id=<%=product.getId()%>">
				<!-- single product -->
				<div class="col-lg-3 col-md-6">
					<div class="single-product">
						<img class="img-fluid" src="img/product/p2.jpg" alt="">
						<div class="product-details">
							<h6><%=product.getName()%></h6>
							<div class="price">
								<h6>
									&#8377;
									<%=product.getCost()%></h6>
								<h6 class="l-through">$210.00</h6>
							</div>
							<div class="container text-center">
								<a class="btn" href="checkout?id=<%=product.getId() %>" role="button" style="background: orange; color: white;">Buy Now</a>
							</div>
						</div>
					</div>
				</div>

				<%
				}
				%>

				<%
				}
				%>
				
				</a>

				<!--*************************** -->
			</div>
		</div>
	</div>
</div>
<!-- Main Body End -->


<%@ include file="../includefiles/footer.jspf"%>
<%@ include file="../includefiles/scripttags.jspf"%>
</body>

</html>