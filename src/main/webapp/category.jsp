<!-- If something breaks uncomment the below line -->
<!-- <body id="category"> -->


<%@ include file="../includefiles/headerMAIN.jspf" %>

	<%@ include file="../includefiles/header.jspf" %>

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<br><br>
			<div class="container">
			<% 
				/*
					pageType comming from = NavigationalRedirects.java
				*/
				String pageType = request.getAttribute("pageType").toString(); 
				if(pageType.equals("men")){
			%>
				<h1> Shop for <%= pageType %> <i class="fa-solid fa-mars"></i> shoes</h1>
				<%} else if (pageType.equals("women")){%>
				<h1> Shop for <%= pageType %> <i class="fa-solid fa-venus"></i> shoes</h1>
			<% } else if (pageType.equals("kids")){ %>
				<h1> Shop for <%= pageType %> <i class="fa-solid fa-child-reaching"></i> shoes</h1>
			<% } else { %>
				<h1> Shop for <%= pageType %> shoes</h1>
			<% } %>
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
						<!-- single product -->
							<div class="col-lg-3 col-md-6">
								<div class="single-product">
									<img class="img-fluid" src="img/product/p2.jpg" alt="">
									<div class="product-details">
										<h6>addidas New Hammer sole
											for Sports person</h6>
										<div class="price">
											<h6>$150.00</h6>
											<h6 class="l-through">$210.00</h6>
										</div>
										<div class="prd-bottom">
	
											<a href="" class="social-info">
												<span class="ti-bag"></span>
												<p class="hover-text">add to bag</p>
											</a>
											<a href="" class="social-info">
												<span class="lnr lnr-heart"></span>
												<p class="hover-text">Wishlist</p>
											</a>
										</div>
									</div>
								</div>
							</div>
						<!-- single product -->
							<div class="col-lg-3 col-md-6">
								<div class="single-product">
									<img class="img-fluid" src="img/product/p2.jpg" alt="">
									<div class="product-details">
										<h6>addidas New Hammer sole
											for Sports person</h6>
										<div class="price">
											<h6>$150.00</h6>
											<h6 class="l-through">$210.00</h6>
										</div>
										<div class="prd-bottom">
	
											<a href="" class="social-info">
												<span class="ti-bag"></span>
												<p class="hover-text">add to bag</p>
											</a>
											<a href="" class="social-info">
												<span class="lnr lnr-heart"></span>
												<p class="hover-text">Wishlist</p>
											</a>
										</div>
									</div>
								</div>
							</div>
						<!-- single product -->
							<div class="col-lg-3 col-md-6">
								<div class="single-product">
									<img class="img-fluid" src="img/product/p2.jpg" alt="">
									<div class="product-details">
										<h6>addidas New Hammer sole
											for Sports person</h6>
										<div class="price">
											<h6>$150.00</h6>
											<h6 class="l-through">$210.00</h6>
										</div>
										<div class="prd-bottom">
	
											<a href="" class="social-info">
												<span class="ti-bag"></span>
												<p class="hover-text">add to bag</p>
											</a>
											<a href="" class="social-info">
												<span class="lnr lnr-heart"></span>
												<p class="hover-text">Wishlist</p>
											</a>
										</div>
									</div>
								</div>
							</div>
						<!-- single product -->
							<div class="col-lg-3 col-md-6">
								<div class="single-product">
									<img class="img-fluid" src="img/product/p2.jpg" alt="">
									<div class="product-details">
										<h6>addidas New Hammer sole
											for Sports person</h6>
										<div class="price">
											<h6>$150.00</h6>
											<h6 class="l-through">$210.00</h6>
										</div>
										<div class="prd-bottom">
	
											<a href="" class="social-info">
												<span class="ti-bag"></span>
												<p class="hover-text">add to bag</p>
											</a>
											<a href="" class="social-info">
												<span class="lnr lnr-heart"></span>
												<p class="hover-text">Wishlist</p>
											</a>
										</div>
									</div>
								</div>
							</div>
							
							
							
						<!--*************************** -->
					</div>
			</div>
		</div>
	</div>
	<!-- Main Body End -->


	<%@ include file="../includefiles/footer.jspf" %>
	<%@ include file="../includefiles/scripttags.jspf" %>
</body>

</html>