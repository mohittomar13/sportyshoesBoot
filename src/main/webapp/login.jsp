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
				<h1> Login </h1>
			</div>
	</section>
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="img/login.jpg" alt="">
						<div class="hover">
							<h4>New to our website?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="primary-btn" href="Registration">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log in to enter</h3>
						<form class="row login_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="email" name="email" placeholder="Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
							</div>
							<div class="col-md-12 form-group">
								<div class="container text-center">
									<div class="creat_account">
										<input type="radio" id="f-option2" checked
											name="selector" value="customer" onclick="loginAs()">
										<label for="f-option2">Customer</label>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="radio" id="f-option3"
											name="selector" value="admin" onclick="loginAs()">
										<label for="f-option3">Admin</label>
									</div>
								</div>
							</div>
				<!-- ************************************************* -->
					<!-- Check myJs.js	-->
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn">Log In <br><small id="loginButton">customer</small> </button>
							</div>
				<!-- ************************************************* -->
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