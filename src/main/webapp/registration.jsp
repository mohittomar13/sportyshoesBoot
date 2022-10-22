<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<%@ include file="../includefiles/headandtitle.jspf" %>
</head>

<body>

	<%@ include file="../includefiles/header.jspf" %>

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<br><br>
			<div class="container">
				<h1> Registration Page</h1>
			</div>
	</section>
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="login_form_inner" style="box-shadow: 0px 0px 15px #cccccc;">
						<h3>Customer &nbsp;&nbsp; Registration &nbsp;&nbsp; Form</h3>
						<form class="row login_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="email" name="email" placeholder="Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->


	<%@ include file="../includefiles/footer.jspf" %>
	<%@ include file="../includefiles/scripttags.jspf" %>
</body>

</html>